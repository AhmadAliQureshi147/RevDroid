from flask import Flask, request, render_template, redirect, flash, send_file, Blueprint
import os
import threading
from xml.dom import minidom
from datetime import datetime
import logging
from androguard.misc import AnalyzeAPK
from reportlab.lib.pagesizes import letter
from OpenSSL import crypto
from reportlab.lib.styles import getSampleStyleSheet
from flask_login import login_required
from reportlab.platypus import SimpleDocTemplate, Paragraph, Spacer

static_analysis = Blueprint('static_analysis', __name__)

UPLOAD_FOLDER = 'uploads'
OUTPUT_FOLDER = 'output'
ALLOWED_EXTENSIONS = {'apk'}

app = Flask(__name__)
app.secret_key = 'supersecretkey'
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER
app.config['OUTPUT_FOLDER'] = OUTPUT_FOLDER

os.makedirs(app.config['UPLOAD_FOLDER'], exist_ok=True)
os.makedirs(app.config['OUTPUT_FOLDER'], exist_ok=True)

logging.basicConfig(level=logging.INFO)

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

def analyze_vulnerabilities(dx, a):
    vulnerabilities = {
        'inadvertently_exported_components': [],
        'improper_certificate_validation': [],
        'intents_vulnerable_to_interception': [],
        'data_leakage_activities': [],
        'pending_intents_insecure': [],
        'dangerous_shell_commands': [],
        'insecure_storage': [],
        'permissions': [],
    }

    # Analyze each method in the dex file for various vulnerabilities
    for method in dx.get_methods():
        method_analysis = dx.get_method(method)
        if method_analysis is None:
            continue

        # Check for improperly protected exported components
        if "exported=\"true\"" in method.get_source():
            vulnerabilities['inadvertently_exported_components'].append({
                'class': method.class_name,
                'method': method.name
            })

        # Improper X.509 certificate validation detection
        if "TrustManager" in method.class_name:
            for instruction in method_analysis.get_instructions():
                if instruction.get_name() == "const-string" and "X509" in instruction.get_string():
                    vulnerabilities['improper_certificate_validation'].append({
                        'class': method.class_name,
                        'method': method.name,
                        'instruction': instruction.get_string()
                    })

        # Detect Intent vulnerabilities with PendingIntent
        if "PendingIntent" in method.class_name:
            for instruction in method_analysis.get_instructions():
                if "FLAG_IMMUTABLE" not in instruction.get_string() or "FLAG_UPDATE_CURRENT" not in instruction.get_string():
                    vulnerabilities['intents_vulnerable_to_interception'].append({
                        'class': method.class_name,
                        'method': method.name
                    })

        # Detect Dangerous Shell Commands
        if "exec" in method.get_source() or "Runtime.getRuntime().exec" in method.get_source():
            vulnerabilities['dangerous_shell_commands'].append({
                'class': method.class_name,
                'method': method.name
            })

    # Check for insecure storage based on permissions
    permissions = a.get_permissions()
    if "android.permission.WRITE_EXTERNAL_STORAGE" in permissions or "android.permission.READ_EXTERNAL_STORAGE" in permissions:
        vulnerabilities['insecure_storage'] = [
            {
                'permission': "android.permission.WRITE_EXTERNAL_STORAGE",
                'description': "Insecure storage detected through WRITE_EXTERNAL_STORAGE permission."
            } if "android.permission.WRITE_EXTERNAL_STORAGE" in permissions else None,
            {
                'permission': "android.permission.READ_EXTERNAL_STORAGE",
                'description': "Insecure storage detected through READ_EXTERNAL_STORAGE permission."
            } if "android.permission.READ_EXTERNAL_STORAGE" in permissions else None
        ]
        # Filter out None values
        vulnerabilities['insecure_storage'] = list(filter(None, vulnerabilities['insecure_storage']))

    # Check for inadvertently exported components in activities, services, etc.
    for activity in a.get_activities():
        if 'exported="true"' in str(activity):
            vulnerabilities['inadvertently_exported_components'].append({
                'type': 'activity',
                'name': activity
            })
    for service in a.get_services():
        if 'exported="true"' in str(service):
            vulnerabilities['inadvertently_exported_components'].append({
                'type': 'service',
                'name': service
            })
    for receiver in a.get_receivers():
        if 'exported="true"' in str(receiver):
            vulnerabilities['inadvertently_exported_components'].append({
                'type': 'receiver',
                'name': receiver
            })
    for provider in a.get_providers():
        if 'exported="true"' in str(provider):
            vulnerabilities['inadvertently_exported_components'].append({
                'type': 'provider',
                'name': provider
            })

    # Add permission analysis to vulnerabilities
    for permission in permissions:
        vulnerabilities['permissions'].append({
            'permission': permission,
            'description': get_permission_description(permission),
            'risk_level': get_permission_risk_level(permission)
        })

    return vulnerabilities




def get_permission_description(permission):
    permission_descriptions = {
        # Permissions for accessing user's contacts including personal profile
        "android.permission.READ_CONTACTS": "Allows an application to read the user's contacts data.",
        "android.permission.WRITE_CONTACTS": "Allows an application to write the user's contacts data.",
        "android.permission.WRITE_VERIFICATION_STATE_E2EE_CONTACT_KEYS": "Allows updating verification status of E2EE contact keys (system-only).",
        "android.permission.SET_DEFAULT_ACCOUNT_FOR_CONTACTS": "Allows an application to set default account for new contacts (system-only).",
        # Permissions for accessing user's calendar
        "android.permission.READ_CALENDAR": "Allows an application to read the user's calendar data.",
        "android.permission.WRITE_CALENDAR": "Allows an application to write the user's calendar data.",
        # Permissions for accessing and modifying user's SMS messages
        "android.permission.SEND_SMS": "Allows an application to send SMS messages.",
        "android.permission.RECEIVE_SMS": "Allows an application to receive SMS messages.",
        "android.permission.READ_SMS": "Allows an application to read SMS messages.",
        "android.permission.RECEIVE_WAP_PUSH": "Allows an application to receive WAP push messages.",
        "android.permission.RECEIVE_MMS": "Allows an application to monitor incoming MMS messages.",
        "android.permission.BIND_CELL_BROADCAST_SERVICE": "Allows binding to the cell broadcast service (system only).",
        "android.permission.READ_CELL_BROADCASTS": "Allows reading previously received cell broadcast messages (system only).",
        "android.permission.SATELLITE_COMMUNICATION": "Allows an application to communicate over satellite (system/privileged apps only).",
        # Permissions for accessing external storage
        "android.permission.READ_EXTERNAL_STORAGE": "Allows an application to read from external storage.",
        "android.permission.WRITE_EXTERNAL_STORAGE": "Allows an application to write to external storage.",
        "android.permission.READ_MEDIA_IMAGES": "Allows an application to read image files from external storage.",
        "android.permission.READ_MEDIA_VIDEO": "Allows an application to read video files from external storage.",
        "android.permission.READ_MEDIA_AUDIO": "Allows an application to read audio files from external storage.",
        "android.permission.ACCESS_MEDIA_LOCATION": "Allows an application to access geographic locations of media files.",
        "android.permission.MANAGE_EXTERNAL_STORAGE": "Allows an application to manage all files on external storage.",
        "android.permission.MANAGE_MEDIA": "Allows an application to modify or delete media files without user confirmation.",
        # Permissions for accessing the device location
        "android.permission.ACCESS_FINE_LOCATION": "Allows an application to access precise (GPS-level) location.",
        "android.permission.ACCESS_COARSE_LOCATION": "Allows an application to access approximate (network-based) location.",
        "android.permission.ACCESS_BACKGROUND_LOCATION": "Allows an application to access location in the background.",
        "android.permission.LOCATION_BYPASS": "Allows emergency or driver-assistance apps to bypass location settings.",
        # Permissions for accessing the call log
        "android.permission.READ_CALL_LOG": "Allows an application to read the user's call log.",
        "android.permission.WRITE_CALL_LOG": "Allows an application to write or modify the user's call log.",
        "android.permission.PROCESS_OUTGOING_CALLS": "Allows an app to process outgoing calls (deprecated).",
        "android.permission.ACCESS_IMS_CALL_SERVICE": "Allows access to IMS call services (for system apps).",
        "android.permission.PERFORM_IMS_SINGLE_REGISTRATION": "Used for IMS Single Registration by system apps.",
        # Permissions for accessing the device telephony
        "android.permission.READ_PHONE_STATE": "Allows read-only access to phone state, including ongoing calls and phone accounts.",
        "android.permission.READ_BASIC_PHONE_STATE": "Allows read-only access to basic phone state information like cellular network type.",
        "android.permission.READ_PHONE_NUMBERS": "Allows read access to the device's phone numbers.",
        "android.permission.CALL_PHONE": "Allows the app to initiate phone calls without user confirmation.",
        "com.android.voicemail.permission.ADD_VOICEMAIL": "Allows an application to add voicemails into the system.",
        "android.permission.USE_SIP": "Allows an app to use the SIP service.",
        "android.permission.ANSWER_PHONE_CALLS": "Allows the app to answer incoming phone calls.",
        "android.permission.MANAGE_OWN_CALLS": "Allows the app to manage its own calls.",
        "android.permission.CALL_COMPANION_APP": "Allows an app to manage calls as a companion app using the InCallService API.",
        "android.permission.ACCEPT_HANDOVER": "Allows a calling app to continue a call started in another app.",
        # Permissions for accessing the device microphone
        "android.permission.RECORD_AUDIO": "Allows an application to record audio from the microphone.",
        "android.permission.RECORD_BACKGROUND_AUDIO": "Allows an application to record audio while in the background.",
        # Permissions for activity recognition
        "android.permission.ACTIVITY_RECOGNITION": "Allows an application to recognize physical activity.",
        # Permissions for accessing the vendor UCE Service
        "android.permission.ACCESS_UCE_PRESENCE_SERVICE": "Allows an application to access UCE-Presence service.",
        "android.permission.ACCESS_UCE_OPTIONS_SERVICE": "Allows an application to access UCE-OPTIONS service.",
        # Permissions for accessing the device camera
        "android.permission.CAMERA": "Allows an application to access the camera device.",
        "android.permission.BACKGROUND_CAMERA": "Allows an application to access the camera in the background.",
        "android.permission.SYSTEM_CAMERA": "Allows access to system-only camera devices.",
        "android.permission.CAMERA_OPEN_CLOSE_LISTENER": "Allows receiving camera open/close notifications.",
        "android.permission.CAMERA_HEADLESS_SYSTEM_USER": "Allows camera access by Headless System User 0 in HSUM mode.",
        "android.permission.CAMERA_PRIVACY_ALLOWLIST": "Allows camera access for driver assistance apps on allowlist.",
        # Permissions for accessing the device sensors
        "android.permission.HIGH_SAMPLING_RATE_SENSORS": "Allows an app to access sensor data with a high sampling rate.",
        "android.permission.BODY_SENSORS": "Allows access to body sensor data like heart rate.",
        "android.permission.BODY_SENSORS_BACKGROUND": "Allows background access to body sensor data.",
        "android.permission.USE_FINGERPRINT": "Allows an app to use fingerprint hardware.",
        "android.permission.USE_BIOMETRIC": "Allows an app to use biometric modalities like fingerprint or facial recognition.",
        # Permissions for posting notifications
        "android.permission.POST_NOTIFICATIONS": "Allows an app to post notifications.",
        # REMOVED PERMISSIONS
        "android.permission.READ_PROFILE": "Removed permission for reading user profile data.",
        "android.permission.WRITE_PROFILE": "Removed permission for writing user profile data.",
        "android.permission.READ_SOCIAL_STREAM": "Removed permission for reading social stream data.",
        "android.permission.WRITE_SOCIAL_STREAM": "Removed permission for writing social stream data.",
        "android.permission.READ_USER_DICTIONARY": "Removed permission for reading user dictionary.",
        "android.permission.WRITE_USER_DICTIONARY": "Removed permission for writing user dictionary.",
        "android.permission.WRITE_SMS": "Removed permission for writing SMS messages.",
        "com.android.browser.permission.READ_HISTORY_BOOKMARKS": "Removed permission for reading browser history and bookmarks.",
        "com.android.browser.permission.WRITE_HISTORY_BOOKMARKS": "Removed permission for writing browser history and bookmarks.",
        "android.permission.AUTHENTICATE_ACCOUNTS": "Removed permission for authenticating accounts.",
        "android.permission.MANAGE_ACCOUNTS": "Removed permission for managing accounts.",
        "android.permission.USE_CREDENTIALS": "Removed permission for using credentials.",
        "android.permission.SUBSCRIBED_FEEDS_READ": "Removed permission for reading subscribed feeds.",
        "android.permission.SUBSCRIBED_FEEDS_WRITE": "Removed permission for writing subscribed feeds.",
        "android.permission.FLASHLIGHT": "Removed permission for accessing the flashlight.",
        # INSTALL PERMISSIONS
        # -Permissions for accessing messages
        # -Permissions for setting the device alarm
        "android.permission.SEND_RESPOND_VIA_MESSAGE": "Allows sending a request to handle the respond-via-message action during calls. Not for third-party apps.",
        "android.permission.SEND_SMS_NO_CONFIRMATION": "Allows sending SMS to premium shortcodes without user confirmation. Not for third-party apps.",
        "android.permission.CARRIER_FILTER_SMS": "Allows filtering carrier-specific SMS. Not for third-party apps.",
        "android.permission.RECEIVE_EMERGENCY_BROADCAST": "Allows receiving emergency cell broadcasts. Not for third-party apps.",
        "android.permission.RECEIVE_BLUETOOTH_MAP": "Allows monitoring incoming Bluetooth MAP messages. Not for third-party apps.",
        "android.permission.BIND_DIRECTORY_SEARCH": "Allows execution of contacts directory search. Not for third-party apps.",
        "android.permission.MODIFY_CELL_BROADCASTS": "Allows modifying cell broadcasts configuration. Not for third-party apps.",
        "com.android.alarm.permission.SET_ALARM": "Allows broadcasting an Intent to set an alarm for the user.",
        # -Permissions for accessing the user voicemail
        "com.android.voicemail.permission.WRITE_VOICEMAIL": "Allows an application to modify and remove voicemails in the system.",
        "com.android.voicemail.permission.READ_VOICEMAIL": "Allows an application to read voicemails in the system.",
        # Permissions for accessing location info
        "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS": "Allows an application to access extra location provider commands.",
        "android.permission.INSTALL_LOCATION_PROVIDER": "Allows an application to install a location provider.",
        "android.permission.LOCATION_HARDWARE": "Allows an application to use location features in hardware, such as geofencing.",
        "android.permission.ACCESS_CONTEXT_HUB": "Allows an application to use the Context Hub.",
        "android.permission.ACCESS_MOCK_LOCATION": "Allows an application to create mock location providers for testing.",
        "android.permission.CONTROL_AUTOMOTIVE_GNSS": "Allows automotive applications to control location suspend state for power management use cases.",
        # Permissions for accessing networks
        "android.permission.INTERNET": "Allows an application to open network sockets.",
        "android.permission.ACCESS_NETWORK_STATE": "Allows an application to access information about networks.",
        "android.permission.ACCESS_WIFI_STATE": "Allows an application to access information about Wi-Fi networks.",
        "android.permission.CHANGE_WIFI_STATE": "Allows an application to change Wi-Fi connectivity state.",
        "android.permission.MANAGE_WIFI_NETWORK_SELECTION": "Manage Wi-Fi network selection features (restricted access).",
        "android.permission.MANAGE_WIFI_INTERFACES": "Manage Wi-Fi interfaces (restricted access).",
        "android.permission.MANAGE_IPSEC_TUNNELS": "Allows an app to create and manage IPsec tunnels.",
        "android.permission.MANAGE_TEST_NETWORKS": "Allows apps to create and manage test networks.",
        "android.permission.MANAGE_REMOTE_AUTH": "Direct access to RemoteAuthService interfaces.",
        "android.permission.USE_REMOTE_AUTH": "Direct access to RemoteAuthService authentication methods.",
        "android.permission.READ_WIFI_CREDENTIAL": "Allows an application to read Wi-Fi credentials.",
        "android.permission.TETHER_PRIVILEGED": "Allows changing tether state and running tether provisioning.",
        "android.permission.RECEIVE_WIFI_CREDENTIAL_CHANGE": "Receive broadcast when Wi-Fi credentials change.",
        "android.permission.OVERRIDE_WIFI_CONFIG": "Allows an application to modify Wi-Fi configuration created by another app.",
        "android.permission.SCORE_NETWORKS": "Allows applications to act as network scorers. (Deprecated)",
        "android.permission.REQUEST_NETWORK_SCORES": "Allows applications to request network recommendations and scores from the NetworkScoreService. (Deprecated)",
        "android.permission.RESTART_WIFI_SUBSYSTEM": "Allows applications to restart the Wi-Fi subsystem.",
        "android.permission.NETWORK_AIRPLANE_MODE": "Allows applications to toggle airplane mode. (System API)",
        "android.permission.NETWORK_STACK": "Allows network stack services (Connectivity and Wi-Fi) to coordinate. (Not for third-party use)",
        "android.permission.OBSERVE_NETWORK_POLICY": "Allows applications to observe network policy changes.",
        "android.permission.NETWORK_FACTORY": "Allows applications to register network factory or agent.",
        "android.permission.NETWORK_STATS_PROVIDER": "Allows applications to access network stats provider.",
        "android.permission.NETWORK_SETTINGS": "Allows Settings and SystemUI to call methods in Networking services. (Not for third-party use)",
        "android.permission.RADIO_SCAN_WITHOUT_LOCATION": "Allows bypassing global location settings for Bluetooth/Wi-Fi scans. (Not for third-party use)",
        "android.permission.NETWORK_SETUP_WIZARD": "Allows SetupWizard to call methods in Networking services. (Not for third-party use)",
        "android.permission.NETWORK_MANAGED_PROVISIONING": "Allows Managed Provisioning to call methods in Networking services. (Not for third-party use)",
        "android.permission.NETWORK_CARRIER_PROVISIONING": "Allows Carrier Provisioning to call methods in Networking services. (Not for third-party use)",
        "android.permission.ACCESS_LOWPAN_STATE": "Allows applications to access information about LoWPAN interfaces. (Not for third-party use)",
        "android.permission.CHANGE_LOWPAN_STATE": "Allows applications to change LoWPAN connectivity state. (Not for third-party use)",
        "android.permission.READ_LOWPAN_CREDENTIAL": "Allows applications to read LoWPAN credentials. (Not for third-party use)",
        "android.permission.MANAGE_LOWPAN_INTERFACES": "Allows services to register/unregister new LoWPAN interfaces. (Not for third-party use)",
        "android.permission.THREAD_NETWORK_PRIVILEGED": "Allows changing Thread network state and access to Thread network credentials such as Network Key and PSKc. (Not for third-party use)",
        "android.permission.THREAD_NETWORK_TESTING": "Allows access to Thread network APIs for testing purposes.",
        "android.permission.NETWORK_BYPASS_PRIVATE_DNS": "Allows bypassing Private DNS settings. (Not for third-party use)",
        "android.permission.WIFI_SET_DEVICE_MOBILITY_STATE": "Allows setting Wi-Fi device mobility state for power management. (Not for third-party use)",
        "android.permission.WIFI_UPDATE_USABILITY_STATS_SCORE": "Allows privileged system apps to update Wi-Fi usability stats and scores. (Not for third-party use)",
        "android.permission.WIFI_UPDATE_COEX_UNSAFE_CHANNELS": "Allows updating Wi-Fi/Cellular coex unsafe channels. (Not for third-party use)",
        "android.permission.WIFI_ACCESS_COEX_UNSAFE_CHANNELS": "Allows accessing Wi-Fi/Cellular coex unsafe channels. (Not for third-party use)",
        "android.permission.MANAGE_WIFI_COUNTRY_CODE": "Allows managing Wi-Fi country code. (Not for third-party use)",
        "android.permission.CONTROL_OEM_PAID_NETWORK_PREFERENCE": "Allows managing automotive network preferences for OEM_PAID and OEM_PRIVATE capable networks. (Not for third-party use)",
        "android.permission.MANAGE_ETHERNET_NETWORKS": "Allows managing Ethernet networks. (Not for third-party use)",
        "android.permission.REGISTER_NSD_OFFLOAD_ENGINE": "Allows system apps to register themselves as an mDNS offload engine.",
        # Permissions for short range, peripheral networks
        "android.permission.BLUETOOTH": "Allows applications to connect to paired Bluetooth devices.",
        "android.permission.BLUETOOTH_SCAN": "Required to be able to discover and pair nearby Bluetooth devices.",
        "android.permission.BLUETOOTH_CONNECT": "Required to be able to connect to paired Bluetooth devices.",
        "android.permission.BLUETOOTH_ADVERTISE": "Required to advertise to nearby Bluetooth devices.",
        "android.permission.UWB_RANGING": "Required to range devices using ultra-wideband.",
        "android.permission.NEARBY_WIFI_DEVICES": "Required to advertise and connect via Wi-Fi with nearby devices.",
        "android.permission.SUSPEND_APPS": "Allows an app to suspend other apps, preventing user access until unsuspended.",
        "android.permission.QUARANTINE_APPS": "Allows an app to quarantine other apps, preventing execution without user action.",
        "android.permission.BLUETOOTH_ADMIN": "Allows applications to manage Bluetooth devices, including pairing.",
        "android.permission.BLUETOOTH_PRIVILEGED": "Allows Bluetooth pairing without user interaction and managing access.",
        "android.permission.BLUETOOTH_MAP": "Allows control access to email providers exclusively for Bluetooth.",
        "android.permission.BLUETOOTH_STACK": "Allows Bluetooth stack access files, only for the Bluetooth APK.",
        "android.permission.VIRTUAL_INPUT_DEVICE": "Allows creating virtual input devices for UHID write access.",
        "android.permission.NFC": "Allows applications to perform I/O operations over NFC.",
        "android.permission.NFC_TRANSACTION_EVENT": "Allows applications to receive NFC transaction events.",
        "android.permission.NFC_PREFERRED_PAYMENT_INFO": "Allows applications to receive NFC preferred payment info.",
        "android.permission.NFC_SET_CONTROLLER_ALWAYS_ON": "Allows an app to set NFC controller always-on states.",
        "android.permission.SECURE_ELEMENT_PRIVILEGED_OPERATION": "Allows privileged operations on the secure element.",
        "android.permission.CONNECTIVITY_INTERNAL": "Allows privileged ConnectivityManager API access for internal use.",
        "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS": "Allows an app to use restricted networks.",
        "android.permission.NETWORK_SIGNAL_STRENGTH_WAKEUP": "Allows setting signal strength in NetworkRequest to wake up device.",
        "android.permission.PACKET_KEEPALIVE_OFFLOAD": "Allows hardware packet offload capabilities access.",
        "android.permission.RECEIVE_DATA_ACTIVITY_CHANGE": "Allows an app to receive data activity change notifications.",
        "android.permission.LOOP_RADIO": "Allows access to loop radio for Android@Home mesh network.",
        "android.permission.NFC_HANDOVER_STATUS": "Allows sending/receiving handover transfer status from Wi-Fi and Bluetooth.",
        "android.permission.MANAGE_BLUETOOTH_WHEN_WIRELESS_CONSENT_REQUIRED": "Allows managing Bluetooth state when wireless consent is required.",
        "android.permission.ENABLE_TEST_HARNESS_MODE": "Allows the device to be reset, enabling Test Harness Mode.",
        "android.permission.UWB_PRIVILEGED": "Allows access to ultra-wideband device, restricted to internal use.",
        # Permissions for accessing accounts
        "android.permission.GET_ACCOUNTS": (
            "Allows access to the list of accounts in the Accounts Service. "
            "Note: Starting with Android 6.0 (API level 23), apps that share the signature "
            "of the authenticator managing an account do not need this permission to read "
            "information about that account."
        ),
        "android.permission.ACCOUNT_MANAGER": "Allows applications to call into AccountAuthenticators. Not for use by third-party applications.",
        # Permissions for accessing hardware that may effect battery life
        "android.permission.CHANGE_WIFI_MULTICAST_STATE": "Allows applications to enter Wi-Fi Multicast mode, which may affect battery life.",
        "android.permission.VIBRATE": "Allows access to the vibrator, typically with limited battery impact.",
        "android.permission.VIBRATE_ALWAYS_ON": "Allows access to the always-on vibrator settings, not for third-party applications.",
        "android.permission.VIBRATE_SYSTEM_CONSTANTS": "Allows access to system-only haptic feedback constants, restricted to system use.",
        "android.permission.ACCESS_VIBRATOR_STATE": "Allows access to the vibrator's current state, restricted to system applications.",
        "android.permission.WAKE_LOCK": "Allows using PowerManager WakeLocks to prevent the device from sleeping or screen from dimming.",
        "android.permission.TRANSMIT_IR": "Allows using the device's IR transmitter, if available.",
        "android.permission.TURN_SCREEN_ON": "Allows an app to turn the screen on, intended for home automation applications.",
        # Permissions related to changing audio settings
        "android.permission.MODIFY_AUDIO_SETTINGS": "Allows an application to modify global audio settings.",
        # Permissions related to screen capture
        "android.permission.LAUNCH_CAPTURE_CONTENT_ACTIVITY_FOR_NOTE": (
            "Allows an application to capture screen content using an intent, restricted for ROLE_NOTES use."
        ),
        "android.permission.DETECT_SCREEN_CAPTURE": "Allows an application to detect when a screen capture of its windows is attempted.",
        "android.permission.DETECT_SCREEN_RECORDING": "Allows an application to detect when it is being recorded.",

        # Permissions for factory reset protection
        "android.permission.MANAGE_FACTORY_RESET_PROTECTION": (
            "Allows an application to set a factory reset protection (FRP) policy, "
            "restricted to system applications."
        ),
        # Permissions for lost mode
        "android.permission.TRIGGER_LOST_MODE": (
            "Allows an application to trigger lost mode on an organization-owned device, "
            "restricted to system applications."
        ),
        # Permissions for accessing hardware
        "android.permission.MANAGE_USB": "Allows an application to manage preferences and permissions for USB devices, restricted to system apps.",
        "android.permission.MANAGE_DEBUGGING": "Allows an application to manage Android Debug Bridge settings, restricted to system apps.",
        "android.permission.ACCESS_MTP": "Allows access to the MTP USB kernel driver, restricted to system use.",
        "android.permission.HARDWARE_TEST": "Allows access to hardware peripherals, intended for hardware testing only.",
        "android.permission.MANAGE_DYNAMIC_SYSTEM": "Allows an application to manage DynamicSystem image, restricted to system use.",
        "android.permission.INSTALL_DYNAMIC_SYSTEM": "Allows an application to install a DynamicSystem image and receive status updates.",
        "android.permission.ACCESS_BROADCAST_RADIO": "Allows access to Broadcast Radio, restricted to system use.",
        "android.permission.ACCESS_FM_RADIO": "Allows access to FM Radio, restricted to system use.",
        "android.permission.NET_ADMIN": "Allows configuration of network interfaces and use of IPSec, restricted to system applications.",
        "android.permission.REMOTE_AUDIO_PLAYBACK": "Allows registration for remote audio playback, restricted to system applications.",
        "android.permission.TV_INPUT_HARDWARE": "Allows access to TV input hardware, restricted to OEM TvInputService apps.",
        "android.permission.CAPTURE_TV_INPUT": "Allows capturing frames from TV input hardware, restricted to system applications.",
        "android.permission.DVB_DEVICE": "Allows access to DVB device, restricted to system applications.",
        "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE": "Allows reading and enabling/disabling the OEM unlock state by carrier, restricted to system apps.",
        "android.permission.MANAGE_USER_OEM_UNLOCK_STATE": "Allows reading and enabling/disabling the OEM unlock state by user, restricted to system apps.",
        "android.permission.READ_OEM_UNLOCK_STATE": "Allows reading the OEM unlock state, restricted to system applications.",
        "android.permission.OEM_UNLOCK_STATE": "Allows enabling/disabling OEM unlock, restricted to system use.",
        "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION": "Allows configuration of factory reset protection, restricted to system apps.",
        "android.permission.ACCESS_PDB_STATE": "Allows querying state of PersistentDataBlock, restricted to system applications.",
        "android.permission.TEST_BLACKLISTED_PASSWORD": "Allows testing if a password is forbidden by admins, restricted to system use.",
        "android.permission.NOTIFY_PENDING_SYSTEM_UPDATE": "Allows system update service to notify device owner about pending updates.",
        # Permissions associated with camera and image capture
        "android.permission.CAMERA_DISABLE_TRANSMIT_LED": (
            "Allows disabling the transmit-indicator LED when the camera is in use by an application, restricted to system apps."
        ),
        "android.permission.CAMERA_SEND_SYSTEM_EVENTS": (
            "Allows sending notifications to the camera service about system-wide events, restricted to system use."
        ),
        "android.permission.CAMERA_INJECT_EXTERNAL_CAMERA": (
            "Allows injecting an external camera to replace the internal camera, restricted to system use."
        ),
        # Permissions associated with telephony state
        "android.permission.GRANT_RUNTIME_PERMISSIONS_TO_TELEPHONY_DEFAULTS": (
            "Allows granting runtime permissions to telephony-related components, restricted to system use."
        ),
        "android.permission.MODIFY_PHONE_STATE": (
            "Allows modification of the telephony state (e.g., power on, MMI), without placing calls."
        ),
        "android.permission.READ_PRECISE_PHONE_STATE": (
            "Allows detailed read-only access to the phone's precise state, for use in dialers or carrier applications."
        ),
        "android.permission.READ_PRIVILEGED_PHONE_STATE": (
            "Allows privileged read access to phone state, restricted to system and role-based use."
        ),
        "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER": (
            "Allows reading device identifiers and using ICC-based authentication for carrier services."
        ),
        "android.permission.READ_ACTIVE_EMERGENCY_SESSION": (
            "Allows read access to emergency number information during active calls or SMS sessions."
        ),
        "android.permission.LISTEN_ALWAYS_REPORTED_SIGNAL_STRENGTH": (
            "Allows listening access to system-reported signal strength continuously."
        ),
        "android.permission.REGISTER_SIM_SUBSCRIPTION": (
            "Allows registration of a PhoneAccount with SIM subscription capability."
        ),
        "android.permission.REGISTER_CALL_PROVIDER": (
            "Allows registration of a PhoneAccount with call provider capability."
        ),
        "android.permission.REGISTER_CONNECTION_MANAGER": (
            "Allows registration of a PhoneAccount with connection manager capability."
        ),
        "android.permission.BIND_INCALL_SERVICE": (
            "Allows binding to InCallService, restricted to system applications."
        ),
        "android.permission.BIND_CALL_STREAMING_SERVICE": (
            "Allows binding to CallStreamingService, restricted to system use."
        ),
        "android.permission.MANAGE_ONGOING_CALLS": (
            "Allows querying ongoing call details and managing ongoing calls, restricted to system applications."
        ),
        "android.permission.NETWORK_SCAN": (
            "Allows the app to request network scans from telephony, restricted to system applications."
        ),
        "android.permission.BIND_VISUAL_VOICEMAIL_SERVICE": (
            "Allows binding to VisualVoicemailService, restricted to system applications."
        ),
        "android.permission.BIND_SCREENING_SERVICE": (
            "Allows binding to CallScreeningService, restricted to system applications."
        ),
        "android.permission.BIND_PHONE_ACCOUNT_SUGGESTION_SERVICE": (
            "Allows binding to PhoneAccountSuggestionService, restricted to system use."
        ),
        "android.permission.BIND_CALL_DIAGNOSTIC_SERVICE": (
            "Allows binding to CallDiagnosticService, restricted to system applications."
        ),
        "android.permission.BIND_CALL_REDIRECTION_SERVICE": (
            "Allows binding to CallRedirectionService, restricted to system applications."
        ),
        "android.permission.BIND_CONNECTION_SERVICE": (
            "Allows binding to ConnectionService, restricted to system use."
        ),
        "android.permission.BIND_TELECOM_CONNECTION_SERVICE": (
            "Allows binding to TelecomConnectionService, restricted to system applications."
        ),
        "android.permission.CONTROL_INCALL_EXPERIENCE": (
            "Allows an application to control the in-call experience, restricted to system applications."
        ),
        "android.permission.RECEIVE_STK_COMMANDS": (
            "Allows an application to receive STK (SIM Tool Kit) related commands."
        ),
        "android.permission.SEND_EMBMS_INTENTS": (
            "Allows sending EMBMS download intents to applications."
        ),
        "android.permission.MANAGE_SENSORS": (
            "Allows internal management of the sensor framework, restricted to system use."
        ),
        "android.permission.BIND_DOMAIN_SELECTION_SERVICE": (
            "Allows binding to DomainSelectionService, restricted to system applications."
        ),
        "android.permission.BIND_IMS_SERVICE": (
            "Allows binding to ImsService, restricted to system and vendor applications."
        ),
        "android.permission.BIND_SATELLITE_SERVICE": (
            "Allows binding to SatelliteService, restricted to system and vendor applications."
        ),
        "android.permission.BIND_SATELLITE_GATEWAY_SERVICE": (
            "Allows binding to SatelliteGatewayService, restricted to system use."
        ),
        "android.permission.BIND_TELEPHONY_DATA_SERVICE": (
            "Allows binding to telephony data services, restricted to system applications."
        ),
        "android.permission.BIND_TELEPHONY_NETWORK_SERVICE": (
            "Allows binding to telephony network services, restricted to system applications."
        ),
        "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS": (
            "Allows managing embedded subscriptions (eUICC), restricted to system applications."
        ),
        "android.permission.BIND_EUICC_SERVICE": ("Allows binding to EuiccService, restricted to system applications."),
        "android.permission.READ_CARRIER_APP_INFO": (
            "Allows reading information about carrier applications, restricted to system use."),
        "android.permission.BIND_GBA_SERVICE": ("Allows binding to GbaService, restricted to system applications."),
        "android.permission.ACCESS_RCS_USER_CAPABILITY_EXCHANGE": (
            "Allows access to RCS user capability exchange APIs, restricted to system applications."),
        "android.permission.ACCESS_LAST_KNOWN_CELL_ID": (
            "Provides access to the last known cell ID, restricted to system applications."),
        # Permissions for sdcard interaction
        "android.permission.WRITE_MEDIA_STORAGE": (
            "Allows writing to internal media storage, but deprecated; use MANAGE_EXTERNAL_STORAGE instead."
        ),
        "android.permission.MANAGE_DOCUMENTS": (
            "Allows managing access to documents, typically used by the platform document manager."
        ),
        "android.permission.MANAGE_CRATES": (
            "Allows managing access to crates, typically used by the platform management app."
        ),
        "android.permission.CACHE_CONTENT": (
            "Allows caching of content, restricted to system applications."
        ),
        "android.permission.ALLOCATE_AGGRESSIVE": (
            "Allows aggressive allocation of disk space, restricted to system applications."
        ),
        "android.permission.USE_RESERVED_DISK": (
            "Allows use of reserved disk space, limited to apps providing core system functionality."
        ),
        # Permissions for screenlock
        "android.permission.DISABLE_KEYGUARD": (
            "Allows applications to disable the keyguard if it is not secure."
        ),
        "android.permission.REQUEST_PASSWORD_COMPLEXITY": (
            "Allows requesting the screen lock complexity level and prompting users to update it."
        ),
        # Permissions to access other installed applications
        "android.permission.GET_TASKS": (
            "Allows accessing information on running tasks, deprecated and no longer enforced."
        ),
        "android.permission.REAL_GET_TASKS": (
            "New version of GET_TASKS for real access to task information, restricted to privileged apps."
        ),
        "android.permission.START_TASKS_FROM_RECENTS": (
            "Allows starting tasks from recent activities, restricted to system applications."
        ),
        "android.permission.INTERACT_ACROSS_USERS": (
            "Allows interaction across users on the device, restricted to system and development roles."
        ),
        "android.permission.INTERACT_ACROSS_USERS_FULL": (
            "Full access to interact across users, allowing unrestricted broadcast and other interactions."
        ),
        "android.permission.INTERACT_ACROSS_PROFILES": (
            "Allows interaction across profiles in the same profile group."
        ),
        "android.permission.ACCESS_HIDDEN_PROFILES": (
            "Allows access to profiles marked with hidden visibility, restricted to certain roles."
        ),
        "android.permission.ACCESS_HIDDEN_PROFILES_FULL": (
            "Full access to details about hidden profiles, restricted to privileged apps."
        ),
        "android.permission.START_CROSS_PROFILE_ACTIVITIES": (
            "Allows starting activities across profiles in the same group, restricted to system roles."
        ),
        "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES": (
            "Allows configuring apps for profile interaction in the same profile group."
        ),
        "android.permission.MANAGE_USERS": (
            "Allows querying and managing users on the device, restricted to privileged applications."
        ),
        "android.permission.CREATE_USERS": (
            "Allows creating, removing, and listing users on the device. Restricted to system applications."
        ),
        "android.permission.MANAGE_SUBSCRIPTION_USER_ASSOCIATION": (
            "Allows setting user association with a subscription, intended for enterprise use."
        ),
        "android.permission.QUERY_USERS": (
            "Allows querying users on the device, restricted to system applications."
        ),
        "android.permission.ACCESS_BLOBS_ACROSS_USERS": (
            "Allows accessing data blobs across users on the device."
        ),
        "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS": (
            "Allows setting profile and device owners, restricted to system applications."
        ),
        "android.permission.QUERY_ADMIN_POLICY": (
            "Allows querying device policies set by any admin on the device."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_APP_EXEMPTIONS": (
            "Allows exempting applications from platform restrictions, intended for internal use."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_TIME": (
            "Allows managing device policy related to time, restricted to device policy management."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_RUNTIME_PERMISSIONS": (
            "Allows setting grant state of runtime permissions on packages, restricted to device policy management."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_ORGANIZATION_IDENTITY": (
            "Allows managing organization identity of the device owner, restricted to device policy management."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_SUPPORT_MESSAGE": (
            "Allows setting support messages for policies affecting user actions, restricted to device policy management."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_BACKUP_SERVICE": (
            "Allows managing backup service policies, restricted to device policy management."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_LOCK_TASK": (
            "Allows managing lock task policies, restricted to device policy management."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_APPS_CONTROL": (
            "Allows managing policy related to application modification."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_INSTALL_UNKNOWN_SOURCES": (
            "Allows managing policy for installing from unknown sources."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_APP_RESTRICTIONS": (
            "Allows managing restrictions on applications."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_CALLS": (
            "Allows managing call-related policies on the device."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_DEBUGGING_FEATURES": (
            "Allows managing debugging feature policies."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_MODIFY_USERS": (
            "Allows managing policy to restrict user modification."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_SAFE_BOOT": (
            "Allows managing policy related to safe boot mode."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_MICROPHONE": (
            "Allows setting policy for restricting microphone usage."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_CAMERA": (
            "Allows setting policy for restricting camera usage."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_KEYGUARD": (
            "Allows managing keyguard-related policies."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_ACCOUNT_MANAGEMENT": (
            "Allows managing account-related policies."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_PACKAGE_STATE": (
            "Allows managing policies related to hiding or suspending packages."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_RESET_PASSWORD": (
            "Allows forcing a new device or managed profile unlock password."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_STATUS_BAR": (
            "Allows managing policies related to the status bar."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_BLUETOOTH": (
            "Allows managing policies related to Bluetooth usage."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_FUN": (
            "Allows managing fun-related policies, such as device UI elements."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_AIRPLANE_MODE": (
            "Allows managing policies related to airplane mode."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_MOBILE_NETWORK": (
            "Allows managing policies related to mobile network configurations."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_PHYSICAL_MEDIA": (
            "Allows managing policies related to physical media access and control."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_SMS": (
            "Allows managing policies related to SMS permissions and usage."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_USB_FILE_TRANSFER": (
            "Allows managing policies related to USB file transfers."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_LOCK_CREDENTIALS": (
            "Allows managing policies related to device lock credentials."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_WIFI": (
            "Allows managing policies related to WiFi configurations and access."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_SCREEN_CAPTURE": (
            "Allows managing policies related to screen capture restrictions."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_INPUT_METHODS": (
            "Allows managing policies related to input method restrictions."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_RESTRICT_PRIVATE_DNS": (
            "Allows managing policies restricting private DNS configuration by users."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_DEFAULT_SMS": (
            "Allows setting policies related to the default SMS application."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_PROFILES": (
            "Allows setting policies related to user profiles."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_PROFILE_INTERACTION": (
            "Allows setting policies for profile interaction restrictions (e.g., preventing cross-profile copy-paste)."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_VPN": (
            "Allows setting policies related to VPN configurations."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_AUDIO_OUTPUT": (
            "Allows setting policies related to audio output settings."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_DISPLAY": (
            "Allows setting policies related to display settings."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_LOCATION": (
            "Allows setting policies related to location settings."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_FACTORY_RESET": (
            "Allows setting policies related to factory reset permissions."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_WALLPAPER": (
            "Allows setting policies related to wallpaper customization."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_SCREEN_CONTENT": (
            "Allows setting policies restricting usage of screen contents."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_DIALOGS": (
            "Allows setting policies related to system dialogs."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_RUN_IN_BACKGROUND": (
            "Allows setting policies for managing apps running in the background."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_PRINTING": (
            "Allows setting policies related to printing permissions."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_NEARBY_COMMUNICATION": (
            "Allows setting policies for nearby communications, such as nearby streaming."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_THREAD_NETWORK": (
            "Allows setting policies for managing access to the Thread network."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_ASSIST_CONTENT": (
            "Allows setting policies for sending assist content to privileged apps like the Assistant."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_WINDOWS": (
            "Allows setting policies related to window management."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_LOCALE": (
            "Allows setting policies for locale configurations."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_AUTOFILL": (
            "Allows setting policies related to autofill service configuration."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_USERS": (
            "Allows setting policies related to user account management."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_CERTIFICATES": (
            "Allows setting policies related to certificate management."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_OVERRIDE_APN": (
            "Allows setting policies related to APN (Access Point Name) configurations."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_SECURITY_LOGGING": (
            "Allows setting policies for security logging on the device."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_AUDIT_LOGGING": (
            "Allows using audit logging APIs for enhanced security oversight."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_UPDATES": (
            "Allows setting policies related to system updates."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_QUERY_SYSTEM_UPDATES": (
            "Allows querying the status of system updates."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_PRIVATE_DNS": (
            "Allows setting policies for private DNS configurations."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_SETTINGS": (
            "Allows setting policies for device configuration settings."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_NETWORK_LOGGING": (
            "Allows setting policies for network logging on the device."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_USB_DATA_SIGNALLING": (
            "Allows setting policies for USB data signaling."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_SUSPEND_PERSONAL_APPS": (
            "Allows setting policies to suspend personal applications."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_KEEP_UNINSTALLED_PACKAGES": (
            "Allows setting policies to manage uninstalled packages on the device."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_ACCESSIBILITY": (
            "Allows setting policies related to accessibility services on the device."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_COMMON_CRITERIA_MODE": (
            "Allows setting policies for enforcing common criteria mode."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_METERED_DATA": (
            "Allows setting policies related to metered data usage."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_PROXY": (
            "Allows setting a global HTTP proxy that is independent of the network."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_BUGREPORT": (
            "Allows the application to request bug reports with user consent."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_APP_USER_DATA": (
            "Manages policies related to application user data."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_LOCK": (
            "Allows locking of profiles or the device with cross-user permissions."
        ),
        "android.permission.QUERY_DEVICE_STOLEN_STATE": (
            "Queries device stolen state for enhanced security."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_APPS": (
            "Manages policies related to system applications."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_WIPE_DATA": (
            "Allows setting policies for wiping data on the device."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_MTE": (
            "Manages policies related to the Memory Tagging Extension (MTE)."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_DEVICE_IDENTIFIERS": (
            "Manages policies for device identifiers."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_CONTENT_PROTECTION": (
            "Manages policies for content protection."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_MANAGED_SUBSCRIPTIONS": (
            "Manages policies for admin-managed subscriptions."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_BLOCK_UNINSTALL": (
            "Manages policies to block package uninstallation."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_CAMERA_TOGGLE": (
            "Manages policies related to camera toggling."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_MICROPHONE_TOGGLE": (
            "Manages policies related to microphone toggling."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS_SECURITY_CRITICAL": (
            "Sets device policies critical for data security across users."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS_FULL": (
            "Sets device policies with full cross-user access permissions."
        ),
        "android.permission.MANAGE_DEVICE_POLICY_STORAGE_LIMIT": (
            "Manages and retrieves maximum storage limits for admin policies."
        ),
        "android.permission.GET_DETAILED_TASKS": (
            "Retrieves full information about recently running tasks."
        ),
        "android.permission.REORDER_TASKS": (
            "Allows reordering of tasks on the device."
        ),
        "android.permission.KILL_BACKGROUND_PROCESSES": (
            "Allows calling to kill background processes of the caller's own package. "
            "As of Android version UPSIDE_DOWN_CAKE, this API does not affect other apps' processes."
        ),
        "android.permission.KILL_ALL_BACKGROUND_PROCESSES": (
            "Allows calling to kill background processes of all apps. Only available to system applications."
        ),
        "android.permission.GET_PROCESS_STATE_AND_OOM_SCORE": (
            "Allows querying process states and current OOM (Out Of Memory) scores."
        ),
        "android.permission.GET_INTENT_SENDER_INTENT": (
            "Allows access to PendingIntent.getIntent()."
        ),
        # Permissions affecting the display of other applications
        "android.permission.SYSTEM_ALERT_WINDOW": (
            "Allows creating windows shown on top of other apps, intended for system-level interaction. "
            "Requires user consent on API 23+."
        ),
        "android.permission.SYSTEM_APPLICATION_OVERLAY": (
            "Allows creating persistent overlays, even if other windows hide overlays. "
            "Only available to system apps."
        ),
        "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND": (
            "Allows a companion app to run in the background, including starting foreground services from the background."
        ),
        "android.permission.REQUEST_COMPANION_START_FOREGROUND_SERVICES_FROM_BACKGROUND": (
            "Allows a companion app to start a foreground service from the background."
        ),
        "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND": (
            "Allows a companion app to use data while in the background."
        ),
        "android.permission.REQUEST_COMPANION_PROFILE_WATCH": (
            "Allows an app to request association with a device as a 'watch' profile."
        ),
        "android.permission.REQUEST_COMPANION_PROFILE_GLASSES": (
            "Allows an app to request association with a device as 'glasses'."
        ),
        "android.permission.REQUEST_COMPANION_PROFILE_APP_STREAMING": (
            "Allows streaming content to a virtual display capable device. Not for third-party apps."
        ),
        "android.permission.REQUEST_COMPANION_PROFILE_NEARBY_DEVICE_STREAMING": (
            "Allows streaming content to a nearby device. Not for third-party apps."
        ),
        "android.permission.REQUEST_COMPANION_PROFILE_AUTOMOTIVE_PROJECTION": (
            "Allows association with a vehicle head unit for automotive projection."
        ),
        "android.permission.REQUEST_COMPANION_PROFILE_COMPUTER": (
            "Allows association with a computer to share functionality or data, such as notifications and media."
        ),
        "android.permission.REQUEST_COMPANION_SELF_MANAGED": (
            "Allows creating a self-managed association."
        ),
        "android.permission.COMPANION_APPROVE_WIFI_CONNECTIONS": (
            "Allows a companion app to manage Wi-Fi associations. Only available to a pre-approved app."
        ),
        "android.permission.READ_PROJECTION_STATE": (
            "Allows reading and listening to the projection state."
        ),
        "android.permission.TOGGLE_AUTOMOTIVE_PROJECTION": (
            "Allows setting and releasing automotive projection states."
        ),
        "android.permission.HIDE_OVERLAY_WINDOWS": (
            "Allows prevention of non-system overlay windows from drawing on top of the app."
        ),
        # Permissions affecting the system wallpaper
        "android.permission.SET_WALLPAPER": (
            "Allows applications to set the wallpaper."
        ),
        "android.permission.SET_WALLPAPER_HINTS": (
            "Allows applications to set the wallpaper hints."
        ),
        "android.permission.READ_WALLPAPER_INTERNAL": (
            "Allows the app to read system and lock screen wallpaper images."
        ),
        "android.permission.ALWAYS_UPDATE_WALLPAPER": (
            "Allows apps to update wallpaper continually by sending data."
        ),
        # Permissions for changing the system clock / time zone
        "android.permission.SET_TIME": (
            "Allows applications to set the system time directly. Restricted to system-level apps."
        ),
        "android.permission.SET_TIME_ZONE": (
            "Allows applications to set the system time zone directly. Restricted to system-level apps."
        ),
        "android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE": (
            "Allows telephony to suggest time and time zone settings."
        ),
        "android.permission.SUGGEST_MANUAL_TIME_AND_ZONE": (
            "Allows applications to suggest time and time zone based on user settings."
        ),
        "android.permission.SUGGEST_EXTERNAL_TIME": (
            "Allows external time suggestions, e.g., from an external clock or Android Auto."
        ),
        "android.permission.MANAGE_TIME_AND_ZONE_DETECTION": (
            "Allows management of automatic time and time zone detection settings."
        ),
        # Permissions related to changing status bar
        "android.permission.EXPAND_STATUS_BAR": (
            "Allows an application to expand or collapse the status bar."
        ),
        # Permissions related to adding/removing shortcuts from Launcher
        "com.android.launcher.permission.INSTALL_SHORTCUT": (
            "Allows an application to install a shortcut in the Launcher."
        ),
        "com.android.launcher.permission.UNINSTALL_SHORTCUT": (
            "Allows an application to uninstall a shortcut from the Launcher. No longer supported."
        ),

        # Permissions related to accessing sync settings
        "android.permission.READ_SYNC_SETTINGS": (
            "Allows applications to read the sync settings."
        ),
        "android.permission.WRITE_SYNC_SETTINGS": (
            "Allows applications to write the sync settings."
        ),
        "android.permission.READ_SYNC_STATS": (
            "Allows applications to read the sync stats."
        ),
        # Low-level system interaction permissions
        "android.permission.SET_SCREEN_COMPATIBILITY": (
            "Allows changing the screen compatibility mode of applications."
        ),
        "android.permission.CHANGE_CONFIGURATION": (
            "Allows modifying the current configuration, such as locale settings."
        ),
        "android.permission.WRITE_SETTINGS": (
            "Allows reading or writing system settings. Explicit user approval required on API 23+."
        ),
        "android.permission.WRITE_GSERVICES": (
            "Allows modifying the Google service map. Not for third-party applications."
        ),
        "android.permission.WRITE_DEVICE_CONFIG": (
            "Allows modifying device configuration settings. Restricted to system and test APIs."
        ),
        "android.permission.WRITE_ALLOWLISTED_DEVICE_CONFIG": (
            "Allows modifying only allowlisted device config settings. Restricted to system APIs."
        ),
        "android.permission.READ_WRITE_SYNC_DISABLED_MODE_CONFIG": (
            "Allows reading and writing sync-disabled mode configurations."
        ),
        "android.permission.READ_DEVICE_CONFIG": (
            "Allows reading device configuration settings."
        ),
        "android.permission.READ_APP_SPECIFIC_LOCALES": (
            "Allows reading system-owned app-specific locale configurations."
        ),
        "android.permission.SET_APP_SPECIFIC_LOCALECONFIG": (
            "Allows setting an application-specific locale configuration."
        ),
        # Low-level system interaction permissions
        "android.permission.MONITOR_DEVICE_CONFIG_ACCESS": (
            "Allows monitoring of device configuration access. Not for third-party apps."
        ),
        "android.permission.FORCE_STOP_PACKAGES": (
            "Allows force-stopping other apps. Restricted to system applications."
        ),
        "android.permission.RETRIEVE_WINDOW_CONTENT": (
            "Allows access to the content of the active window. Restricted to system apps."
        ),
        "android.permission.SET_ANIMATION_SCALE": (
            "Allows modification of the global animation scaling factor."
        ),
        "android.permission.PERSISTENT_ACTIVITY": (
            "Deprecated: Allows making activities persistent, but functionality will be removed."
        ),
        "android.permission.GET_PACKAGE_SIZE": (
            "Allows finding out the space used by any package."
        ),
        "android.permission.SET_PREFERRED_APPLICATIONS": (
            "Deprecated: No longer useful; previously allowed setting preferred applications."
        ),
        "android.permission.RECEIVE_BOOT_COMPLETED": (
            "Allows receiving a broadcast when the system has finished booting."
        ),
        "android.permission.BROADCAST_STICKY": (
            "Allows broadcasting sticky intents, where data remains accessible after broadcast."
        ),
        "android.permission.MOUNT_UNMOUNT_FILESYSTEMS": (
            "Allows mounting and unmounting file systems for removable storage. Restricted to system apps."
        ),
        # Additional low-level system interaction permissions
        "android.permission.MOUNT_FORMAT_FILESYSTEMS": (
            "Allows formatting file systems for removable storage. Restricted to system apps."
        ),
        "android.permission.STORAGE_INTERNAL": (
            "Allows access to internal storage management features. Restricted to system apps."
        ),
        "android.permission.ASEC_ACCESS": (
            "Allows access to ASEC non-destructive API calls for secure storage."
        ),
        "android.permission.ASEC_CREATE": (
            "Allows creation of ASEC secure storage volumes. Restricted to system apps."
        ),
        "android.permission.ASEC_DESTROY": (
            "Allows destruction of ASEC secure storage volumes. Restricted to system apps."
        ),
        "android.permission.ASEC_MOUNT_UNMOUNT": (
            "Allows mounting and unmounting of ASEC volumes. Restricted to system apps."
        ),
        "android.permission.ASEC_RENAME": (
            "Allows renaming of ASEC volumes. Restricted to system apps."
        ),
        "android.permission.WRITE_APN_SETTINGS": (
            "Allows access to and modification of APN settings. Restricted to system apps."
        ),
        "android.permission.CHANGE_NETWORK_STATE": (
            "Allows changes to network connectivity state."
        ),
        "android.permission.CLEAR_APP_CACHE": (
            "Allows clearing the cache of all installed apps on the device."
        ),
        "android.permission.ALLOW_ANY_CODEC_FOR_PLAYBACK": (
            "Allows use of any media decoder when decoding for playback."
        ),
        "android.permission.MANAGE_CA_CERTIFICATES": (
            "Allows installing or uninstalling CA certificates on behalf of the user."
        ),
        "android.permission.RECOVERY": (
            "Allows performing operations needed for system recovery and updates."
        ),
        # Additional specialized system and configuration permissions
        "android.permission.BIND_RESUME_ON_REBOOT_SERVICE": (
            "Allows binding to services for the resume-on-reboot feature. Restricted to system apps."
        ),
        "android.permission.READ_SYSTEM_UPDATE_INFO": (
            "Allows reading system update information. Restricted to system apps."
        ),
        "android.permission.BIND_JOB_SERVICE": (
            "Allows binding to an app’s task services."
        ),
        "android.permission.UPDATE_CONFIG": (
            "Allows initiating configuration updates. The app must verify source integrity."
        ),
        "android.permission.QUERY_TIME_ZONE_RULES": (
            "Allows querying time zone rules state on the device. No longer used."
        ),
        "android.permission.UPDATE_TIME_ZONE_RULES": (
            "Allows managing timezone rule updates. No longer used."
        ),
        "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING": (
            "Allows resetting throttling in the shortcut manager."
        ),
        "android.permission.BIND_NETWORK_RECOMMENDATION_SERVICE": (
            "Allows binding to the Network Recommendation Service. Restricted to system apps."
        ),
        "android.permission.CHANGE_OVERLAY_PACKAGES": (
            "Allows changing runtime resource overlays. Restricted to system apps."
        ),
        "android.permission.MANAGE_CREDENTIAL_MANAGEMENT_APP": (
            "Allows setting, updating, and removing credential management apps."
        ),
        "android.permission.UPDATE_FONTS": (
            "Allows updating and managing font files on the device. Restricted to system apps."
        ),
        "android.permission.USE_ATTESTATION_VERIFICATION_SERVICE": (
            "Allows using the AttestationVerificationService for attestation verification."
        ),
        "android.permission.VERIFY_ATTESTATION": (
            "Allows exporting a service to verify attestations for system-defined profiles."
        ),
        "android.permission.BIND_ATTESTATION_VERIFICATION_SERVICE": (
            "Ensures only the system can bind to an AttestationVerificationService."
        ),
        "android.permission.REQUEST_UNIQUE_ID_ATTESTATION": (
            "Allows generating keys with a unique device ID via attestation."
        ),
        "android.permission.BIND_RKP_SERVICE": (
            "Allows using the Remote Key Provisioning Service."
        ),
        "android.permission.LIST_ENABLED_CREDENTIAL_PROVIDERS": (
            "Allows querying enabled credential manager providers on the device."
        ),
        # Credential Manager permissions
        "android.permission.PROVIDE_DEFAULT_ENABLED_CREDENTIAL_SERVICE": (
            "Allows a system app to register with the credential manager without requiring user enablement."
        ),
        "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS": (
            "Allows specifying credential providers as candidates or defaults for credential manager flows."
        ),
        "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN": (
            "Allows a browser to invoke credential manager APIs on behalf of another relying party."
        ),
        "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS": (
            "Allows querying metadata about prepared credential candidates in credential manager."
        ),
        "android.permission.LAUNCH_CREDENTIAL_SELECTOR": (
            "Allows access to the Credential Manager UI for selecting and saving credentials."
        ),
        "android.permission.PROVIDE_REMOTE_CREDENTIALS": (
            "Allows storing and retrieving credentials from a remote device."
        ),
        # Special Development Tool permissions
        "android.permission.WRITE_SECURE_SETTINGS": (
            "Allows writing to secure system settings, restricted to system-level apps for system configuration."
        ),
        "android.permission.DUMP": (
            "Allows retrieval of state dump information from system services, restricted to debugging and monitoring tools."
        ),
        "android.permission.CONTROL_UI_TRACING": (
            "Allows an app to start UI tracing for InputMethod and WindowManager, aiding in debugging UI responsiveness."
        ),
        "android.permission.READ_LOGS": (
            "Allows access to low-level system logs, which may contain sensitive user information."
        ),
        "android.permission.SET_DEBUG_APP": (
            "Allows an app to be configured for debugging, restricted to development or testing environments."
        ),
        "android.permission.READ_DROPBOX_DATA": (
            "Allows reading data from Dropbox logs, intended for system analysis and debugging."
        ),
        "android.permission.SET_PROCESS_LIMIT": (
            "Allows setting a limit on the maximum number of application processes, useful in testing environments."
        ),
        "android.permission.SET_ALWAYS_FINISH": (
            "Allows control over whether background activities are terminated immediately."
        ),
        "android.permission.SIGNAL_PERSISTENT_PROCESSES": (
            "Allows sending signals to persistent processes, generally used for debugging system processes."
        ),
        "android.permission.BIND_TRACE_REPORT_SERVICE": (
            "Must be required by TraceReportService to ensure only the system can bind for reporting."
        ),
        "android.permission.APPROVE_INCIDENT_REPORTS": (
            "Allows approving incident and bug reports for external sharing, limited to a single authorized application."
        ),
        "android.permission.REQUEST_INCIDENT_REPORT_APPROVAL": (
            "Allows an app to request approval for incident or bug report from the system, reserved for system apps."
        ),
        "android.permission.GET_ACCOUNTS_PRIVILEGED": (
            "Allows privileged access to the list of accounts in the Accounts Service."
        ),
        "android.permission.GET_PASSWORD": (
            "Grants potential access to user passwords upon account addition, but with no guarantees."
        ),
        "android.permission.DIAGNOSTIC": (
            "Permits read/write access to diagnostic resources, intended for system diagnostics only."
        ),
        "android.permission.STATUS_BAR": (
            "Allows control over the status bar, including opening, closing, or disabling it."
        ),
        "android.permission.TRIGGER_SHELL_BUGREPORT": (
            "Allows bugreport triggering via shell using the bugreport API, restricted to system apps."
        ),
        "android.permission.TRIGGER_SHELL_PROFCOLLECT_UPLOAD": (
            "Allows profcollect report upload triggering via shell, limited to system applications."
        ),
        "android.permission.STATUS_BAR_SERVICE": (
            "Enables an application to act as the status bar, typically used only by SystemUI."
        ),
        "android.permission.BIND_QUICK_SETTINGS_TILE": (
            "Permits binding to third-party quick settings tiles, restricted to system usage."
        ),
        "android.permission.BIND_CONTROLS": (
            "Allows SystemUI to request third-party controls for enhanced UI controls."
        ),
        "android.permission.FORCE_BACK": (
            "Allows a BACK operation to be forced on the top activity, restricted to system operations."
        ),
        "android.permission.UPDATE_DEVICE_STATS": (
            "Allows updating device statistics, intended for system applications."
        ),
        # New private system permissions
        "android.permission.GET_APP_OPS_STATS": (
            "Allows collection of application operation statistics; restricted to system usage."
        ),
        "android.permission.GET_HISTORICAL_APP_OPS_STATS": (
            "Allows collection of historical application operation statistics; not available for third-party applications."
        ),
        "android.permission.UPDATE_APP_OPS_STATS": (
            "Allows updating application operation statistics, typically for system monitoring."
        ),
        "android.permission.MANAGE_APP_OPS_RESTRICTIONS": (
            "Allows updating user restrictions on app operations, restricted to system applications."
        ),
        "android.permission.MANAGE_APP_OPS_MODES": (
            "Allows updating modes for user app operations, used for system operations."
        ),
        "android.permission.INTERNAL_SYSTEM_WINDOW": (
            "Allows opening windows used by system UI components, restricted to system apps."
        ),
        "android.permission.UNLIMITED_TOASTS": (
            "Allows bypassing toast message rate limits; generally restricted to system applications."
        ),
        "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS": (
            "Allows hiding non-system overlay windows; used in system configurations."
        ),
        "android.permission.MANAGE_APP_TOKENS": (
            "Permits management of application tokens for window management; restricted to the system."
        ),
        "android.permission.REGISTER_WINDOW_MANAGER_LISTENERS": (
            "Allows registering for window manager events; limited to system UI."
        ),
        "android.permission.FREEZE_SCREEN": (
            "Allows freezing the screen during full-screen transitions, restricted to system applications."
        ),
        # New permissions for accessibility and system-level interaction
        "android.permission.INJECT_EVENTS": (
            "Allows injecting user events (keys, touch, trackball) to any window; "
            "used primarily by system apps for testing and debugging."
        ),
        "android.permission.FILTER_EVENTS": (
            "Allows registering an input filter to process user events before dispatch; restricted to system use."
        ),
        "android.permission.RETRIEVE_WINDOW_TOKEN": (
            "Allows access to window tokens via the accessibility manager, used by system applications."
        ),
        "android.permission.MODIFY_ACCESSIBILITY_DATA": (
            "Allows modification of accessibility information from other apps, restricted to system use."
        ),
        "android.permission.ACT_AS_PACKAGE_FOR_ACCESSIBILITY": (
            "Allows performing accessibility operations on behalf of other packages, intended for system use."
        ),
        "android.permission.CHANGE_ACCESSIBILITY_VOLUME": (
            "Allows changing accessibility-specific volume settings, not for third-party applications."
        ),
        "android.permission.ACCESSIBILITY_MOTION_EVENT_OBSERVING": (
            "Allows observing motion events for accessibility services without consuming them, restricted to system services."
        ),
        "android.permission.FRAME_STATS": (
            "Allows collection of frame rendering statistics, typically for performance analysis."
        ),
        "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY": (
            "Allows temporarily enabling accessibility features, intended for system applications."
        ),
        "android.permission.OPEN_ACCESSIBILITY_DETAILS_SETTINGS": (
            "Allows launching settings for specific accessibility services, limited to system use."
        ),
        "android.permission.SET_ACTIVITY_WATCHER": (
            "Allows global monitoring of activity startups, mainly used in debugging contexts."
        ),
        "android.permission.SHUTDOWN": (
            "Allows initiating a device shutdown, restricted to system and privileged applications."
        ),
        "android.permission.STOP_APP_SWITCHES": (
            "Allows temporarily stopping app switching, enabling control over critical UI sessions."
        ),
        "android.permission.GET_TOP_ACTIVITY_INFO": (
            "Allows access to private information of the current top activity, including assist context."
        ),
        "android.permission.SET_SYSTEM_AUDIO_CAPTION": (
            "Allows setting system audio captions and UI, restricted to system services."
        ),
        "android.permission.READ_INPUT_STATE": (
            "Allows access to the state of input keys and switches; deprecated permission."
        ),
        "android.permission.BIND_INPUT_METHOD": (
            "Restricts binding to system InputMethodServices to the system."
        ),
        "android.permission.TEST_INPUT_METHOD": (
            "Allows access to test APIs for input method managers, restricted to system use."
        ),
        "android.permission.BIND_MIDI_DEVICE_SERVICE": (
            "Restricts binding to system MIDI services, limited to system applications."
        ),
        "android.permission.BIND_ACCESSIBILITY_SERVICE": (
            "Restricts binding to system accessibility services to ensure security."
        ),
        "android.permission.BIND_PRINT_SERVICE": (
            "Restricts binding to print services for authorized system applications only."
        ),
        "android.permission.BIND_PRINT_RECOMMENDATION_SERVICE": (
            "Restricts binding to print recommendation services for system use."
        ),
        "android.permission.READ_PRINT_SERVICES": (
            "Allows reading of installed and enabled print services, restricted to system applications."
        ),
        "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS": (
            "Allows access to recommended print services, restricted to system applications."
        ),
        "android.permission.BIND_NFC_SERVICE": (
            "Restricts binding to NFC services for authorized system applications only."
        ),
        "android.permission.BIND_QUICK_ACCESS_WALLET_SERVICE": (
            "Restricts binding to quick access wallet services to the system."
        ),
        "android.permission.BIND_PRINT_SPOOLER_SERVICE": (
            "Restricts binding to print spooler services for authorized system applications."
        ),
        "android.permission.BIND_COMPANION_DEVICE_MANAGER_SERVICE": (
            "Restricts binding to companion device manager services for authorized system applications."
        ),
        "android.permission.BIND_COMPANION_DEVICE_SERVICE": (
            "Ensures only the system can bind to companion device services."
        ),
        "android.permission.BIND_RUNTIME_PERMISSION_PRESENTER_SERVICE": (
            "Allows the system to bind to RuntimePermissionPresenterService."
        ),
        "android.permission.BIND_TEXT_SERVICE": (
            "Restricts binding to TextService for system-only spell-checker services."
        ),
        "android.permission.BIND_ATTENTION_SERVICE": (
            "Allows system binding to AttentionService, not for third-party apps."
        ),
        "android.permission.BIND_ROTATION_RESOLVER_SERVICE": (
            "Allows system binding to RotationResolverService, restricting access to authorized services."
        ),
        "android.permission.BIND_VPN_SERVICE": (
            "Restricts binding to VPN services, allowing only system access."
        ),
        "android.permission.BIND_WALLPAPER": (
            "Allows binding to wallpaper services for system and privileged applications only."
        ),
        "android.permission.BIND_GAME_SERVICE": (
            "Restricts binding to game services for system-only interactions."
        ),
        "android.permission.BIND_VOICE_INTERACTION": (
            "Allows binding to VoiceInteractionService, restricted to system use."
        ),
        "android.permission.BIND_HOTWORD_DETECTION_SERVICE": (
            "Restricts hotword detection service binding to OEMs and system applications only."
        ),
        "android.permission.MANAGE_HOTWORD_DETECTION": (
            "Grants control over hotword detection and visual queries, intended for OEMs and system apps."
        ),
        "android.permission.BIND_VISUAL_QUERY_DETECTION_SERVICE": (
            "Restricts binding to visual query detection services, limited to OEM and system use."
        ),
        "android.permission.SUBSCRIBE_TO_KEYGUARD_LOCKED_STATE": (
            "Allows an app to subscribe to keyguard (lock screen) state changes, limited to ROLE_ASSISTANT and system apps."
        ),
        "android.permission.BIND_AUTOFILL_SERVICE": (
            "Restricts binding to AutofillService, allowing only system access."
        ),
        "android.permission.BIND_FIELD_CLASSIFICATION_SERVICE": (
            "Restricts binding to field classification services for autofill, accessible only to system."
        ),
        "android.permission.BIND_CREDENTIAL_PROVIDER_SERVICE": (
            "Restricts binding to CredentialProviderService for secure credential management, system-only access."
        ),
        "android.permission.BIND_AUTOFILL": (
            "Alternative binding for Autofill services, limiting access to system apps."
        ),
        "android.permission.BIND_AUTOFILL_FIELD_CLASSIFICATION_SERVICE": (
            "Restricts access to AutofillFieldClassificationService for secure field classification."
        ),
        "android.permission.BIND_INLINE_SUGGESTION_RENDER_SERVICE": (
            "Allows system to bind to InlineSuggestionRenderService, preventing third-party access."
        ),
        "android.permission.BIND_TEXTCLASSIFIER_SERVICE": (
            "Restricts binding to TextClassifierService for system applications only."
        ),
        "android.permission.BIND_REMOTE_LOCKSCREEN_VALIDATION_SERVICE": (
            "Restricts access to remote lock screen validation services, limiting to system use."
        ),
        "android.permission.BIND_SELECTION_TOOLBAR_RENDER_SERVICE": (
            "Allows system access to SelectionToolbarRenderService, preventing third-party use."
        ),
        "android.permission.BIND_CONTENT_CAPTURE_SERVICE": (
            "Restricts binding to ContentCaptureService, accessible only to system applications."
        ),
        "android.permission.BIND_TRANSLATION_SERVICE": (
            "Restricts access to TranslationService, designed for OEMs and system applications."
        ),
        "android.permission.MANAGE_UI_TRANSLATION": (
            "Grants management over UI translation functions, limited to system and OEM use."
        ),
        "android.permission.BIND_CONTENT_SUGGESTIONS_SERVICE": (
            "Restricts binding to ContentSuggestionsService for system-only content suggestion management."
        ),
        "android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE": (
            "Restricts binding to WallpaperEffectsGenerationService, preventing unauthorized access."
        ),
        "android.permission.BIND_MUSIC_RECOGNITION_SERVICE": (
            "Restricts access to MusicRecognitionService for system use, intended for OEM apps."
        ),
        "android.permission.BIND_AUGMENTED_AUTOFILL_SERVICE": (
            "Restricts access to AugmentedAutofillService for enhanced autofill functionality, system-only."
        ),
        "android.permission.MANAGE_VOICE_KEYPHRASES": (
            "Allows a VoiceInteractionService to enroll its sound models, limited to OEM and system apps."
        ),
        "android.permission.KEYPHRASE_ENROLLMENT_APPLICATION": (
            "Allows enrollment of sound models for keyphrase recognition, restricted to system enrollment applications."
        ),
        "android.permission.BIND_REMOTE_DISPLAY": (
            "Restricts binding to RemoteDisplayProvider, accessible only to the system."
        ),
        "android.permission.BIND_TV_AD_SERVICE": (
            "Restricts binding to TvAdService for handling TV advertisements, accessible to system services only."
        ),
        "android.permission.BIND_TV_INPUT": (
            "Restricts binding to TvInputService, allowing only the system to bind for managing TV inputs."
        ),
        "android.permission.BIND_TV_INTERACTIVE_APP": (
            "Restricts binding to TvInteractiveAppService for interactive TV applications, available to system apps only."
        ),
        "android.permission.BIND_TV_REMOTE_SERVICE": (
            "Restricts binding to TvRemoteProvider, used only by system applications."
        ),
        "android.permission.TV_VIRTUAL_REMOTE_CONTROLLER": (
            "Allows virtual remote control for TV applications, accessible to system apps only."
        ),
        "android.permission.CHANGE_HDMI_CEC_ACTIVE_SOURCE": (
            "Grants access to change HDMI CEC active source, limited to system use."
        ),
        "android.permission.MODIFY_PARENTAL_CONTROLS": (
            "Allows modification of parental controls, restricted to system applications."
        ),
        "android.permission.READ_CONTENT_RATING_SYSTEMS": (
            "Allows reading of TvContentRatingSystemInfo, restricted to system applications only."
        ),
        "android.permission.NOTIFY_TV_INPUTS": (
            "Allows sending notifications to TV inputs, available only to system apps."
        ),
        "android.permission.TUNER_RESOURCE_ACCESS": (
            "Grants access to tuner resource management, intended for OEM TV input services."
        ),
        "android.permission.MEDIA_RESOURCE_OVERRIDE_PID": (
            "Allows Media Resource Manager Service to manage MediaCodecs on behalf of other processes."
        ),
        "android.permission.REGISTER_MEDIA_RESOURCE_OBSERVER": (
            "Allows registration of a media resource observer, restricted to system use only."
        ),
        "android.permission.BIND_ROUTE_PROVIDER": (
            "Restricts binding to MediaRouteService, ensuring only the system can bind."
        ),
        "android.permission.BIND_DEVICE_ADMIN": (
            "Ensures only the system can bind to a device administration receiver, necessary for device management."
        ),
        "android.permission.MANAGE_DEVICE_ADMINS": (
            "Allows adding or removing other applications as a device admin. Restricted to system apps."
        ),
        "android.permission.RESET_PASSWORD": (
            "Allows resetting the device password. Intended for privileged system apps."
        ),
        "android.permission.LOCK_DEVICE": (
            "Allows locking the device. Restricted to system applications."
        ),
        "android.permission.SET_ORIENTATION": (
            "Allows setting the screen orientation at a low level. Limited to system applications."
        ),
        "android.permission.SET_POINTER_SPEED": (
            "Allows adjusting pointer speed. Restricted to system use."
        ),
        "android.permission.SET_INPUT_CALIBRATION": (
            "Allows input device calibration adjustments. Restricted to system apps."
        ),
        "android.permission.SET_KEYBOARD_LAYOUT": (
            "Allows setting keyboard layout configurations. Restricted to system apps."
        ),
        "android.permission.SCHEDULE_PRIORITIZED_ALARM": (
            "Allows scheduling prioritized alarms, usable in device doze mode. Limited to system applications."
        ),
        "android.permission.SCHEDULE_EXACT_ALARM": (
            "Allows using exact alarm APIs for precise alarm scheduling, primarily for user-facing features."
        ),
        "android.permission.USE_EXACT_ALARM": (
            "Allows exact alarm scheduling for core app functionalities without user approval."
        ),
        "android.permission.TABLET_MODE": (
            "Allows querying and monitoring tablet mode status. Restricted to system applications."
        ),
        "android.permission.REQUEST_INSTALL_PACKAGES": (
            "Allows an app to request the installation of packages. Limited to system applications."
        ),
        "android.permission.REQUEST_DELETE_PACKAGES": (
            "Allows an app to request the deletion of packages."
        ),
        "android.permission.INSTALL_PACKAGES": (
            "Allows an application to install packages. Restricted to system applications only."
        ),
        "android.permission.INSTALL_SELF_UPDATES": (
            "Allows an application to install updates for itself. Limited to system apps."
        ),
        "android.permission.INSTALL_PACKAGE_UPDATES": (
            "Allows an application to install updates. This permission is restricted to system applications."
        ),
        "com.android.permission.INSTALL_EXISTING_PACKAGES": (
            "Allows an application to install existing system packages. Restricted to system and privileged applications."
        ),
        "com.android.permission.USE_INSTALLER_V2": (
            "Allows an application to use package installer v2 APIs. Not for third-party apps."
        ),
        "android.permission.INSTALL_TEST_ONLY_PACKAGE": (
            "Allows test-only applications to be installed. Restricted to system applications."
        ),
        "android.permission.INSTALL_DPC_PACKAGES": (
            "Allows an application to install Device Policy Controller (DPC) packages only. Limited to system applications."
        ),
        "android.permission.READ_INSTALLED_SESSION_PATHS": (
            "Allows an application to read resolved paths to APKs of a session-based install. Not for third-party use."
        ),
        "com.android.permission.USE_SYSTEM_DATA_LOADERS": (
            "Allows an application to use System Data Loaders. Restricted to system apps."
        ),
        "android.permission.CLEAR_APP_USER_DATA": (
            "Allows an application to clear user data. Restricted to system and installer applications."
        ),
        "android.permission.GET_APP_GRANTED_URI_PERMISSIONS": (
            "Allows an application to retrieve the URI permissions granted to another app. Not available to third-party applications."
        ),
        "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS": (
            "Allows an application to clear URI permissions granted to another app. Restricted to system apps."
        ),
        "android.permission.MANAGE_SCOPED_ACCESS_DIRECTORY_PERMISSIONS": (
            "Allows an application to manage scoped directory access permissions granted by users. Intended for system use only."
        ),
        "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS": (
            "Allows an application to change the status of persistable URI permissions granted to another application. Intended only for the platform settings app."
        ),
        "android.permission.DELETE_CACHE_FILES": (
            "Deprecated permission for deleting an app's cache files; still present to avoid exceptions for older implementations."
        ),
        "android.permission.INTERNAL_DELETE_CACHE_FILES": (
            "Allows internal deletion of cache files; not available to third-party applications."
        ),
        "android.permission.DELETE_PACKAGES": (
            "Allows an application to delete installed packages, requiring user confirmation if the deleting app did not install the package."
        ),
        "android.permission.MOVE_PACKAGE": (
            "Allows relocation of installed packages. Reserved for system applications."
        ),
        "android.permission.KEEP_UNINSTALLED_PACKAGES": (
            "Allows applications to retain uninstalled packages as APK files. Intended for testing purposes."
        ),
        "android.permission.CHANGE_COMPONENT_ENABLED_STATE": (
            "Allows changes to the enabled state of components outside the application's own components. Restricted to system use."
        ),
        "android.permission.GRANT_RUNTIME_PERMISSIONS": (
            "Allows granting specific runtime permissions to applications. Restricted to system installer and verifier roles."
        ),
        "android.permission.LAUNCH_PERMISSION_SETTINGS": (
            "Allows launching the settings page for managing permissions. Reserved for system applications."
        ),
        "android.permission.INSTALL_GRANT_RUNTIME_PERMISSIONS": (
            "Allows granting of specific permissions upon installation. Requires permissions to install packages."
        ),
        "android.permission.REVOKE_RUNTIME_PERMISSIONS": (
            "Allows revocation of specific runtime permissions from applications."
        ),
        "android.permission.REVOKE_POST_NOTIFICATIONS_WITHOUT_KILL": (
            "Allows revocation of notification permissions without terminating the application. Intended for system use only."
        ),
        "android.permission.GET_RUNTIME_PERMISSIONS": (
            "Allows reading of runtime permission states. Intended for system applications."
        ),
        "android.permission.RESTORE_RUNTIME_PERMISSIONS": (
            "Allows restoring runtime permissions, ensuring no override of explicit user choices."
        ),
        "android.permission.ADJUST_RUNTIME_PERMISSIONS_POLICY": (
            "Allows modifications to fixed permission policies. Restricted to system use."
        ),
        "android.permission.UPGRADE_RUNTIME_PERMISSIONS": (
            "Allows upgrading of runtime permissions for applications."
        ),
        "android.permission.WHITELIST_RESTRICTED_PERMISSIONS": (
            "Allows adding restricted permissions to allowlists."
        ),
        "android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS": (
            "Allows an application to exempt specific apps from auto-revoking permissions when unused for an extended time."
        ),
        "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS": (
            "Allows an application to observe changes in permission grants and revocations."
        ),
        "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS": (
            "Allows an application to manage sessions for one-time permissions."
        ),
        "android.permission.MANAGE_ROLE_HOLDERS": (
            "Allows managing of role holders, determining eligible apps for specific roles."
        ),
        "android.permission.BYPASS_ROLE_QUALIFICATION": (
            "Enables bypassing role requirements under specific conditions. Restricted to system shell and non-persistent across reboots."
        ),
        "android.permission.MANAGE_COMPANION_DEVICES": (
            "Allows managing connected companion devices."
        ),
        "android.permission.CONFIGURE_WIFI_DISPLAY": (
            "Permits configuring Wi-Fi display settings."
        ),
        "android.permission.CONTROL_WIFI_DISPLAY": (
            "Provides control over low-level Wi-Fi display features."
        ),
        "android.permission.CONFIGURE_DISPLAY_COLOR_MODE": (
            "Allows control over system-wide display color modes."
        ),
        "android.permission.CONTROL_DEVICE_LIGHTS": (
            "Grants control over device lights for specific scenarios."
        ),
        "android.permission.CONTROL_DISPLAY_SATURATION": (
            "Allows setting of display saturation levels."
        ),
        "android.permission.ACCESS_AMBIENT_LIGHT_STATS": (
            "Allows collection of ambient light data."
        ),
        "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS": (
            "Permits modifying display brightness settings."
        ),
        "android.permission.OVERRIDE_DISPLAY_MODE_REQUESTS": (
            "Overrides user settings for display mode."
        ),
        "android.permission.CONTROL_VPN": (
            "Allows control over VPN functionality."
        ),
        "android.permission.CONTROL_ALWAYS_ON_VPN": (
            "Provides access to always-on VPN configuration settings."
        ),
        "android.permission.CAPTURE_TUNER_AUDIO_INPUT": (
            "Allows capturing audio from tuner inputs like FM radio."
        ),
        "android.permission.CAPTURE_AUDIO_OUTPUT": (
            "Allows capturing the general audio output of the device."
        ),
        "android.permission.CAPTURE_MEDIA_OUTPUT": (
            "Allows capturing media audio outputs with system capture restrictions."
        ),
        "android.permission.CAPTURE_VOICE_COMMUNICATION_OUTPUT": (
            "Allows capturing voice communication audio output."
        ),
        "android.permission.CAPTURE_AUDIO_HOTWORD": (
            "Allows capturing audio specifically for hotword detection."
        ),
        "android.permission.ACCESS_ULTRASOUND": (
            "Enables access to ultrasound audio content."
        ),
        "android.permission.SOUNDTRIGGER_DELEGATE_IDENTITY": (
            "Allows delegation of identity for sound trigger operations."
        ),
        "android.permission.MODIFY_AUDIO_ROUTING": (
            "Allows modifying the device’s audio routing decisions."
        ),
        "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED": (
            "Allows privileged modifications to system audio settings."
        ),
        "android.permission.CALL_AUDIO_INTERCEPTION": (
            "Permits access to ongoing call audio."
        ),
        "android.permission.MODIFY_DEFAULT_AUDIO_EFFECTS": (
            "Allows modification of default audio effects across applications."
        ),
        "android.permission.MEDIA_CONTENT_CONTROL": (
            "Enables control and monitoring of media playback content."
        ),
        "android.permission.MEDIA_ROUTING_CONTROL": (
            "Allows routing control over media applications."
        ),
        "android.permission.BRICK": (
            "Enables an application to disable the device, a highly privileged and dangerous permission."
        ),
        "android.permission.REBOOT": (
            "Allows the device to be rebooted. Not for use by third-party apps."
        ),
        "android.permission.DEVICE_POWER": (
            "Allows low-level access to power management functions."
        ),
        "android.permission.POWER_SAVER": (
            "Allows toggling the battery saver mode on the device."
        ),
        "android.permission.BATTERY_PREDICTION": (
            "Allows providing battery predictions to the system."
        ),
        "android.permission.USER_ACTIVITY": (
            "Allows access to control user activity functions in PowerManager."
        ),
        "android.permission.MANAGE_LOW_POWER_STANDBY": (
            "Allows managing low power standby settings."
        ),
        "android.permission.SET_LOW_POWER_STANDBY_PORTS": (
            "Allows keeping ports open during low power standby."
        ),
        "android.permission.NET_TUNNELING": (
            "Allows access to the tun tap driver for network tunneling."
        ),
        "android.permission.FACTORY_TEST": (
            "Allows running the app in root mode during manufacturer test mode."
        ),
        "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS": (
            "Allows broadcasting an intent to close system dialogs."
        ),
        "android.permission.BROADCAST_PACKAGE_REMOVED": (
            "Allows broadcasting a notification that an app has been removed."
        ),
        "android.permission.BROADCAST_SMS": (
            "Allows broadcasting notifications of SMS receipts."
        ),
        "android.permission.BROADCAST_WAP_PUSH": (
            "Allows broadcasting WAP push receipt notifications."
        ),
        "android.permission.BROADCAST_NETWORK_PRIVILEGED": (
            "Allows privileged broadcast of network requests."
        ),
        "android.permission.MASTER_CLEAR": (
            "Allows master reset of the device, wiping all data."
        ),
        "android.permission.CALL_PRIVILEGED": (
            "Allows making calls, including to emergency numbers, without user confirmation."
        ),
        "android.permission.PERFORM_CDMA_PROVISIONING": (
            "Allows performing CDMA Over-the-Air provisioning."
        ),
        "android.permission.PERFORM_SIM_ACTIVATION": (
            "Allows performing SIM card activation."
        ),
        "android.permission.CONTROL_LOCATION_UPDATES": (
            "Allows enabling/disabling location update notifications."
        ),
        "android.permission.ACCESS_CHECKIN_PROPERTIES": (
            "Allows access to the properties table in the check-in database."
        ),
        "android.permission.PACKAGE_USAGE_STATS": (
            "Allows collection of app usage statistics."
        ),
        "android.permission.REPORT_USAGE_STATS": (
            "Allows reporting events to the UsageStatsManager."
        ),
        "android.permission.ACCESS_BROADCAST_RESPONSE_STATS": (
            "Allows access to stats about broadcast response times."
        ),
        "android.permission.LOADER_USAGE_STATS": (
            "Allows reading logs related to the package’s data loader access."
        ),
        "android.permission.OBSERVE_APP_USAGE": (
            "Allows observing app usage time and registering callbacks for usage limits."
        ),
        "android.permission.CHANGE_APP_IDLE_STATE": (
            "Allows changing the idle state of applications."
        ),
        "android.permission.CHANGE_APP_LAUNCH_TIME_ESTIMATE": (
            "Allows adjusting the estimated launch time for applications."
        ),
        "android.permission.CHANGE_DEVICE_IDLE_TEMP_WHITELIST": (
            "Temporarily allowlists inactive apps for network access and wakelocks."
        ),
        "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS": (
            "Allows an app to request ignoring battery optimizations."
        ),
        "android.permission.BATTERY_STATS": (
            "Allows collecting detailed battery usage statistics."
        ),
        "android.permission.STATSCOMPANION": (
            "Allows managing stats companion data. Restricted to system use."
        ),
        "android.permission.REGISTER_STATS_PULL_ATOM": (
            "Allows registering stats pull callbacks to collect device stats."
        ),
        "android.permission.READ_RESTRICTED_STATS": (
            "Allows reading restricted stats from the stats daemon."
        ),
        "android.permission.BACKUP": (
            "Allows controlling the device backup and restore process."
        ),
        "android.permission.MODIFY_SETTINGS_OVERRIDEABLE_BY_RESTORE": (
            "Allows modifying settings that can be overridden by restore processes."
        ),
        "android.permission.RECOVER_KEYSTORE": (
            "Allows managing the recovery of Android keystore data."
        ),
        "android.permission.CONFIRM_FULL_BACKUP": (
            "Allows launching secure full-backup confirmation UI."
        ),
        "android.permission.BIND_REMOTEVIEWS": (
            "Allows binding to RemoteViews for displaying custom widgets."
        ),
        "android.permission.BIND_APPWIDGET": (
            "Allows binding AppWidget data, protecting data accessed by the widget."
        ),
        "android.permission.MANAGE_SLICE_PERMISSIONS": (
            "Allows managing slice permissions for accessing custom content slices."
        ),
        "android.permission.BIND_KEYGUARD_APPWIDGET": (
            "Allows managing keyguard widget applications."
        ),
        "android.permission.MODIFY_APPWIDGET_BIND_PERMISSIONS": (
            "Allows setting and querying which apps can bind AppWidgets."
        ),
        "android.permission.CHANGE_BACKGROUND_DATA_SETTING": (
            "Allows modifying the background data setting of the device."
        ),
        "android.permission.GLOBAL_SEARCH": (
            "Allows global search system to access specific provider data."
        ),
        "android.permission.GLOBAL_SEARCH_CONTROL": (
            "Internal permission for system-controlled access to the global search provider, protecting "
            "query functionality and search statistics."
        ),
        "android.permission.READ_SEARCH_INDEXABLES": (
            "Internal permission to allow system-level applications to read data indexed for search."
        ),
        "android.permission.BIND_SETTINGS_SUGGESTIONS_SERVICE": (
            "Allows binding to the system's settings suggestions service."
        ),
        "android.permission.WRITE_SETTINGS_HOMEPAGE_DATA": (
            "Enables access to settings-related data in the card content provider."
        ),
        "android.permission.LAUNCH_MULTI_PANE_SETTINGS_DEEP_LINK": (
            "Allows applications to embed activities in the Settings app."
        ),
        "android.permission.ALLOW_PLACE_IN_MULTI_PANE_SETTINGS": (
            "Enables embedding activities within a multi-pane Settings interface."
        ),
        "android.permission.SET_WALLPAPER_COMPONENT": (
            "Allows privileged applications to set live wallpapers programmatically."
        ),
        "android.permission.SET_WALLPAPER_DIM_AMOUNT": (
            "Allows privileged applications to adjust wallpaper dimming."
        ),
        "android.permission.READ_DREAM_STATE": (
            "Provides access to read 'dream' (screensaver) settings and state."
        ),
        "android.permission.WRITE_DREAM_STATE": (
            "Allows privileged applications to modify 'dream' settings and manage dream states."
        ),
        "android.permission.READ_DREAM_SUPPRESSION": (
            "Provides access to determine if ambient display (dream) is suppressed."
        ),
        "android.permission.ACCESS_CACHE_FILESYSTEM": (
            "Allows privileged applications to read and write to the cache partition."
        ),
        "android.permission.COPY_PROTECTED_DATA": (
            "Enables copying protected data into secure storage containers, limited to system use."
        ),
        "android.permission.CRYPT_KEEPER": (
            "Protects access to encryption methods, reserved for system security."
        ),
        "android.permission.READ_NETWORK_USAGE_HISTORY": (
            "Allows access to historical network usage data for specific networks and apps."
        ),
        "android.permission.MANAGE_NETWORK_POLICY": (
            "Enables control over network policies and specific app rules."
        ),
        "android.permission.PACKAGE_VERIFICATION_AGENT": (
            "Allows an application to act as a trusted package verification agent."
        ),
        "android.permission.BIND_PACKAGE_VERIFIER": (
            "Ensures only system applications can bind to the package verifier."
        ),
        "android.permission.MANAGE_SUBSCRIPTION_PLANS": (
            "Manages carrier subscription plans with privileged access."
        ),
        "android.permission.MANAGE_FINGERPRINT": (
            "Allows system-level management of fingerprint templates."
        ),
        "android.permission.MANAGE_FACE": (
            "Permits system-level management of face templates."
        ),
        "android.permission.MANAGE_ROLLBACKS": (
            "Allows privileged apps to manage APK-level rollbacks."
        ),
        "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS": (
            "Grants apps the capability to set and verify lock screen credentials."
        ),
        "android.permission.CHECK_REMOTE_LOCKSCREEN": (
            "Allows verification of lock screen credentials from a remote device."
        ),
        "android.permission.RESET_FINGERPRINT_LOCKOUT": (
            "Allows an app to reset fingerprint attempt counter. Reserved for the system."
        ),
        "android.permission.TEST_BIOMETRIC": (
            "Allows access to TestApis for various components in the biometric stack."
        ),
        "android.permission.MANAGE_BIOMETRIC": (
            "Allows direct access to Biometric Service interfaces. Reserved for the system."
        ),
        "android.permission.USE_BIOMETRIC_INTERNAL": (
            "Allows direct access to Biometric Service authentication methods."
        ),
        "android.permission.MANAGE_BIOMETRIC_DIALOG": (
            "Allows system control over BiometricDialog."
        ),
        "android.permission.SET_BIOMETRIC_DIALOG_ADVANCED": (
            "Allows advanced feature settings on BiometricDialog."
        ),
        "android.permission.CONTROL_KEYGUARD": (
            "Allows an application to control keyguard. System use only."
        ),
        "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS": (
            "Allows control of secure notifications on keyguard. Privileged access."
        ),
        "android.permission.MANAGE_WEAK_ESCROW_TOKEN": (
            "Allows management of weak escrow tokens on the device."
        ),
        "android.permission.TRUST_LISTENER": (
            "Allows listening to trust changes. System use only."
        ),
        "android.permission.PROVIDE_TRUST_AGENT": (
            "Allows an application to provide a trust agent."
        ),
        "android.permission.SHOW_KEYGUARD_MESSAGE": (
            "Allows an app to display a message on the keyguard."
        ),
        "android.permission.LAUNCH_TRUST_AGENT_SETTINGS": (
            "Allows launching the trust agent settings activity."
        ),
        "android.permission.BIND_TRUST_AGENT": (
            "Ensures only the system can bind to a TrustAgentService."
        ),
        "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE": (
            "Ensures only the system can bind to a NotificationListenerService."
        ),
        "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE": (
            "Ensures only the system can bind to a NotificationAssistantService."
        ),
        "android.permission.BIND_CHOOSER_TARGET_SERVICE": (
            "Ensures only the system can bind to a ChooserTargetService."
        ),
    }

    return permission_descriptions.get(permission, "Unknown permission")

def get_permission_risk_level(permission):
    high_risk_permissions = [
        "android.permission.READ_CONTACTS",  # Access to contacts is highly sensitive
        "android.permission.WRITE_CONTACTS",  # Modifying contacts data
        "android.permission.READ_CALENDAR",  # Sensitive calendar data
        "android.permission.WRITE_CALENDAR",  # Modify calendar data
        "android.permission.SEND_SMS",  # Sending SMS without user consent
        "android.permission.RECEIVE_SMS",  # Reading sensitive SMS messages
        "android.permission.READ_SMS",  # Access to SMS content
        "android.permission.RECEIVE_WAP_PUSH",  # Incoming WAP push messages
        "android.permission.RECEIVE_MMS",  # Incoming MMS messages
        "android.permission.READ_EXTERNAL_STORAGE",  # Access to shared external storage
        "android.permission.WRITE_EXTERNAL_STORAGE",  # Write access to external storage
        "android.permission.READ_MEDIA_IMAGES",  # Read image files
        "android.permission.READ_MEDIA_VIDEO",  # Read video files
        "android.permission.READ_MEDIA_AUDIO",  # Read audio files
        "android.permission.MANAGE_EXTERNAL_STORAGE",  # Manage all files on external storage
        "android.permission.MANAGE_MEDIA",  # Modify media files without user confirmation
        "android.permission.ACCESS_FINE_LOCATION",  # Precise location access
        "android.permission.ACCESS_COARSE_LOCATION",  # Approximate location access
        "android.permission.ACCESS_BACKGROUND_LOCATION",  # Background location access
        "android.permission.READ_CALL_LOG",  # Reading call logs is sensitive
        "android.permission.WRITE_CALL_LOG",  # Writing call logs is sensitive
        "android.permission.PROCESS_OUTGOING_CALLS",  # Manipulating outgoing calls (now deprecated)
        "android.permission.READ_PHONE_STATE",  # Access to sensitive phone state data
        "android.permission.READ_PHONE_NUMBERS",  # Access to phone numbers
        "android.permission.CALL_PHONE",  # Ability to make direct phone calls
        "com.android.voicemail.permission.ADD_VOICEMAIL",  # Manipulation of voicemail
        "android.permission.ANSWER_PHONE_CALLS",  # Answering incoming calls
        "android.permission.ACCEPT_HANDOVER",  # Call handover
        "android.permission.RECORD_AUDIO",  # Allows recording of audio, high privacy risk
        # category  very high risk (below)
        "android.permission.RECORD_BACKGROUND_AUDIO",  # Allows background audio recording, very high risk
        "android.permission.BACKGROUND_CAMERA",  # Background camera access
        "android.permission.SYSTEM_CAMERA",  # System-only camera access
        "android.permission.CAMERA_HEADLESS_SYSTEM_USER",  # Headless system user access
        "android.permission.BODY_SENSORS_BACKGROUND",  # Background access to sensitive body data
        # category  very high risk (above)
        "android.permission.ACCESS_UCE_PRESENCE_SERVICE",  # Vendor UCE-Presence access
        "android.permission.ACCESS_UCE_OPTIONS_SERVICE",  # Vendor UCE-OPTIONS access
        "android.permission.CAMERA",  # Camera access
        "android.permission.CAMERA_OPEN_CLOSE_LISTENER",  # Camera access notifications
        "android.permission.CAMERA_PRIVACY_ALLOWLIST",  # Allows camera access for certain apps
        "android.permission.BODY_SENSORS",  # Body sensor data is sensitive
        "android.permission.USE_BIOMETRIC",  # Sensitive biometric data like fingerprint
        "android.permission.READ_PROFILE",
        "android.permission.WRITE_PROFILE",
        "android.permission.READ_SOCIAL_STREAM",
        "android.permission.WRITE_SOCIAL_STREAM",
        "android.permission.READ_USER_DICTIONARY",
        "android.permission.WRITE_USER_DICTIONARY",
        "android.permission.WRITE_SMS",
        "com.android.browser.permission.READ_HISTORY_BOOKMARKS",
        "com.android.browser.permission.WRITE_HISTORY_BOOKMARKS",
        "android.permission.AUTHENTICATE_ACCOUNTS",
        "android.permission.MANAGE_ACCOUNTS",
        "android.permission.USE_CREDENTIALS",
        "android.permission.SUBSCRIBED_FEEDS_READ",
        "android.permission.SUBSCRIBED_FEEDS_WRITE",
        "android.permission.FLASHLIGHT",
        "android.permission.SEND_RESPOND_VIA_MESSAGE",
        "android.permission.SEND_SMS_NO_CONFIRMATION",
        "android.permission.CARRIER_FILTER_SMS",
        "android.permission.RECEIVE_EMERGENCY_BROADCAST",
        "android.permission.RECEIVE_BLUETOOTH_MAP",
        "android.permission.BIND_DIRECTORY_SEARCH",
        "android.permission.MODIFY_CELL_BROADCASTS",
        "com.android.voicemail.permission.WRITE_VOICEMAIL",
        "com.android.voicemail.permission.READ_VOICEMAIL",
        "android.permission.INSTALL_LOCATION_PROVIDER",
        "android.permission.LOCATION_HARDWARE",
        "android.permission.ACCESS_CONTEXT_HUB",
        "android.permission.ACCESS_MOCK_LOCATION",
        "android.permission.CONTROL_AUTOMOTIVE_GNSS",
        "android.permission.MANAGE_WIFI_NETWORK_SELECTION",
        "android.permission.MANAGE_WIFI_INTERFACES",
        "android.permission.MANAGE_IPSEC_TUNNELS",
        "android.permission.MANAGE_TEST_NETWORKS",
        "android.permission.MANAGE_REMOTE_AUTH",
        "android.permission.USE_REMOTE_AUTH",
        "android.permission.READ_WIFI_CREDENTIAL",
        "android.permission.TETHER_PRIVILEGED",
        "android.permission.RECEIVE_WIFI_CREDENTIAL_CHANGE",
        "android.permission.OVERRIDE_WIFI_CONFIG",
        "android.permission.SCORE_NETWORKS",
        "android.permission.REQUEST_NETWORK_SCORES",
        "android.permission.RESTART_WIFI_SUBSYSTEM",
        "android.permission.NETWORK_AIRPLANE_MODE",
        "android.permission.NETWORK_STACK",
        "android.permission.OBSERVE_NETWORK_POLICY",
        "android.permission.NETWORK_FACTORY",
        "android.permission.NETWORK_STATS_PROVIDER",
        "android.permission.NETWORK_SETTINGS",
        "android.permission.RADIO_SCAN_WITHOUT_LOCATION",
        "android.permission.NETWORK_SETUP_WIZARD",
        "android.permission.NETWORK_MANAGED_PROVISIONING",
        "android.permission.NETWORK_CARRIER_PROVISIONING",
        "android.permission.ACCESS_LOWPAN_STATE",
        "android.permission.CHANGE_LOWPAN_STATE",
        "android.permission.READ_LOWPAN_CREDENTIAL",
        "android.permission.MANAGE_LOWPAN_INTERFACES",
        "android.permission.THREAD_NETWORK_PRIVILEGED",
        "android.permission.THREAD_NETWORK_TESTING",
        "android.permission.NETWORK_BYPASS_PRIVATE_DNS",
        "android.permission.WIFI_SET_DEVICE_MOBILITY_STATE",
        "android.permission.WIFI_UPDATE_USABILITY_STATS_SCORE",
        "android.permission.WIFI_UPDATE_COEX_UNSAFE_CHANNELS",
        "android.permission.WIFI_ACCESS_COEX_UNSAFE_CHANNELS",
        "android.permission.MANAGE_WIFI_COUNTRY_CODE",
        "android.permission.CONTROL_OEM_PAID_NETWORK_PREFERENCE",
        "android.permission.MANAGE_ETHERNET_NETWORKS",
        "android.permission.REGISTER_NSD_OFFLOAD_ENGINE",
        "android.permission.BLUETOOTH_SCAN",  # Bluetooth scanning can expose location-like data
        "android.permission.BLUETOOTH_CONNECT",  # May expose device connectivity information
        "android.permission.BLUETOOTH_ADVERTISE",  # Broadcasting device presence
        "android.permission.NEARBY_WIFI_DEVICES",  # Broad Wi-Fi device discovery
        "android.permission.SUSPEND_APPS",  # Prevents user access
        "android.permission.QUARANTINE_APPS",  # Quarantines other apps
        "android.permission.BLUETOOTH_PRIVILEGED",  # Pairing without user interaction
        "android.permission.NFC_SET_CONTROLLER_ALWAYS_ON",  # May be used to track device presence
        "android.permission.SECURE_ELEMENT_PRIVILEGED_OPERATION",  # Privileged access to security element
        "android.permission.CONNECTIVITY_INTERNAL",  # Restricted connectivity access
        "android.permission.CONNECTIVITY_USE_RESTRICTED_NETWORKS",  # Restricted network use
        "android.permission.ENABLE_TEST_HARNESS_MODE",  # Full device reset capability
        "android.permission.UWB_PRIVILEGED"  # Access to UWB device; restricted to internal use
        "android.permission.GET_ACCOUNTS",  # Access to user account information is sensitive
        "android.permission.ACCOUNT_MANAGER",  # Allows access to account authenticator actions
        "android.permission.VIBRATE_ALWAYS_ON",
        # Persistent vibration access is restricted and can affect battery significantly
        "android.permission.VIBRATE_SYSTEM_CONSTANTS",  # Restricted access to system-only haptic feedback
        "android.permission.ACCESS_VIBRATOR_STATE",  # Privileged access to current vibrator state
        "android.permission.TURN_SCREEN_ON",
        "android.permission.LAUNCH_CAPTURE_CONTENT_ACTIVITY_FOR_NOTE",
        "android.permission.MANAGE_FACTORY_RESET_PROTECTION",
        "android.permission.TRIGGER_LOST_MODE",
        "android.permission.MANAGE_USB",
        "android.permission.MANAGE_DEBUGGING",
        "android.permission.ACCESS_MTP",
        "android.permission.HARDWARE_TEST",
        "android.permission.MANAGE_DYNAMIC_SYSTEM",
        "android.permission.INSTALL_DYNAMIC_SYSTEM",
        "android.permission.NET_ADMIN",
        "android.permission.TV_INPUT_HARDWARE",
        "android.permission.CAPTURE_TV_INPUT",
        "android.permission.DVB_DEVICE",
        "android.permission.MANAGE_CARRIER_OEM_UNLOCK_STATE",
        "android.permission.MANAGE_USER_OEM_UNLOCK_STATE",
        "android.permission.READ_OEM_UNLOCK_STATE",
        "android.permission.OEM_UNLOCK_STATE",
        "android.permission.CONFIGURE_FACTORY_RESET_PROTECTION",
        "android.permission.ACCESS_PDB_STATE",
        "android.permission.TEST_BLACKLISTED_PASSWORD",
        "android.permission.NOTIFY_PENDING_SYSTEM_UPDATE",
        "android.permission.CAMERA_DISABLE_TRANSMIT_LED",  # Potential privacy concerns by hiding camera use
        "android.permission.CAMERA_INJECT_EXTERNAL_CAMERA",
        "android.permission.MODIFY_PHONE_STATE",  # Modifying telephony state can interfere with network and calls
        "android.permission.USE_ICC_AUTH_WITH_DEVICE_IDENTIFIER",
        # Sensitive device and SIM information for authentication
        "android.permission.GRANT_RUNTIME_PERMISSIONS_TO_TELEPHONY_DEFAULTS",
        # Granting runtime permissions to telephony components
        "android.permission.READ_PRECISE_PHONE_STATE",  # Access to precise phone state information
        "android.permission.READ_PRIVILEGED_PHONE_STATE",  # Privileged read access to detailed phone state
        "android.permission.READ_ACTIVE_EMERGENCY_SESSION",  # Access to sensitive emergency session information
        "android.permission.LISTEN_ALWAYS_REPORTED_SIGNAL_STRENGTH",  # Access to signal strength data continuously
        "android.permission.REGISTER_SIM_SUBSCRIPTION",  # Ability to register SIM subscription capability
        "android.permission.REGISTER_CALL_PROVIDER",  # Ability to register as a call provider
        "android.permission.REGISTER_CONNECTION_MANAGER",
        "android.permission.BIND_INCALL_SERVICE",  # Allows binding to in-call telephony services
        "android.permission.BIND_CALL_STREAMING_SERVICE",  # Allows binding to call streaming services
        "android.permission.MANAGE_ONGOING_CALLS",  # Manages ongoing calls with high security impact
        "android.permission.NETWORK_SCAN",  # Enables network scanning with potential privacy implications
        "android.permission.BIND_VISUAL_VOICEMAIL_SERVICE",  # Allows binding to visual voicemail services
        "android.permission.BIND_SCREENING_SERVICE",  # Allows binding to call screening services
        "android.permission.BIND_PHONE_ACCOUNT_SUGGESTION_SERVICE",
        "android.permission.BIND_CALL_DIAGNOSTIC_SERVICE",
        "android.permission.BIND_CALL_REDIRECTION_SERVICE",
        "android.permission.BIND_CONNECTION_SERVICE",
        "android.permission.BIND_TELECOM_CONNECTION_SERVICE",
        "android.permission.CONTROL_INCALL_EXPERIENCE",
        "android.permission.RECEIVE_STK_COMMANDS",
        "android.permission.SEND_EMBMS_INTENTS",
        "android.permission.MANAGE_SENSORS",
        "android.permission.BIND_DOMAIN_SELECTION_SERVICE",
        "android.permission.BIND_IMS_SERVICE",
        "android.permission.BIND_SATELLITE_SERVICE",
        "android.permission.BIND_SATELLITE_GATEWAY_SERVICE",
        "android.permission.BIND_TELEPHONY_DATA_SERVICE",
        "android.permission.BIND_TELEPHONY_NETWORK_SERVICE",
        "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS",
        "android.permission.BIND_EUICC_SERVICE",
        "android.permission.READ_CARRIER_APP_INFO",
        "android.permission.BIND_GBA_SERVICE",
        "android.permission.ACCESS_RCS_USER_CAPABILITY_EXCHANGE",
        "android.permission.ACCESS_LAST_KNOWN_CELL_ID",
        "android.permission.WRITE_MEDIA_STORAGE",  # Deprecated but grants privileged access to media storage
        "android.permission.MANAGE_DOCUMENTS",  # Manages document access, high risk due to data sensitivity
        "android.permission.MANAGE_CRATES",  # Manages crates access, high risk due to restricted system use
        "android.permission.ALLOCATE_AGGRESSIVE",  # Aggressive disk allocation could impact other apps
        "android.permission.USE_RESERVED_DISK",
        "android.permission.REAL_GET_TASKS",  # Access to real task information
        "android.permission.START_TASKS_FROM_RECENTS",  # Starts tasks from recent activities
        "android.permission.INTERACT_ACROSS_USERS",  # Interact across multiple users on the device
        "android.permission.INTERACT_ACROSS_USERS_FULL",  # Full unrestricted access across users
        "android.permission.ACCESS_HIDDEN_PROFILES_FULL",  # Full access to hidden profiles
        "android.permission.MANAGE_USERS",
        "android.permission.CREATE_USERS",  # Allows full user creation and management
        "android.permission.MANAGE_PROFILE_AND_DEVICE_OWNERS",  # Manage profile and device ownership
        "android.permission.QUERY_USERS",  # Access to user query functionalities
        "android.permission.ACCESS_BLOBS_ACROSS_USERS",  # Cross-user data access
        "android.permission.MANAGE_DEVICE_POLICY_RUNTIME_PERMISSIONS",  # Control over runtime permissions across users
        "android.permission.MANAGE_DEVICE_POLICY_APP_EXEMPTIONS",  # Exempt apps from platform restrictions
        "android.permission.MANAGE_DEVICE_POLICY_TIME",  # Manage device policy related to time across users
        "android.permission.MANAGE_DEVICE_POLICY_BACKUP_SERVICE",  # Manage backup service policy
        "android.permission.MANAGE_DEVICE_POLICY_LOCK_TASK",
        "android.permission.MANAGE_DEVICE_POLICY_APPS_CONTROL",  # Modifies app management policies
        "android.permission.MANAGE_DEVICE_POLICY_INSTALL_UNKNOWN_SOURCES",  # Controls unknown source installs
        "android.permission.MANAGE_DEVICE_POLICY_APP_RESTRICTIONS",  # App restrictions management
        "android.permission.MANAGE_DEVICE_POLICY_CALLS",  # Call management policy
        "android.permission.MANAGE_DEVICE_POLICY_RESET_PASSWORD",  # Password reset for device unlock
        "android.permission.MANAGE_DEVICE_POLICY_MICROPHONE",  # Microphone usage restrictions
        "android.permission.MANAGE_DEVICE_POLICY_CAMERA",  # Camera usage restrictions
        "android.permission.MANAGE_DEVICE_POLICY_MODIFY_USERS",
        "android.permission.MANAGE_DEVICE_POLICY_LOCK_CREDENTIALS",  # Lock credentials policy management
        "android.permission.MANAGE_DEVICE_POLICY_USB_FILE_TRANSFER",  # USB file transfer policies
        "android.permission.MANAGE_DEVICE_POLICY_WIFI",  # WiFi access and management policies
        "android.permission.MANAGE_DEVICE_POLICY_MOBILE_NETWORK",
        "android.permission.MANAGE_DEVICE_POLICY_FACTORY_RESET",  # Policy affecting factory reset
        "android.permission.MANAGE_DEVICE_POLICY_LOCATION",  # Location policy management
        "android.permission.MANAGE_DEVICE_POLICY_VPN",  # VPN access management
        "android.permission.MANAGE_DEVICE_POLICY_AUDIO_OUTPUT",  # Audio output settings policy
        "android.permission.MANAGE_DEVICE_POLICY_THREAD_NETWORK",
        "android.permission.MANAGE_DEVICE_POLICY_CERTIFICATES",  # Certificates policy management
        "android.permission.MANAGE_DEVICE_POLICY_OVERRIDE_APN",
        "android.permission.MANAGE_DEVICE_POLICY_SECURITY_LOGGING",  # Security logging management
        "android.permission.MANAGE_DEVICE_POLICY_AUDIT_LOGGING",  # Audit logging
        "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_UPDATES",
        "android.permission.MANAGE_DEVICE_POLICY_SYSTEM_APPS",  # System apps policy management
        "android.permission.MANAGE_DEVICE_POLICY_WIPE_DATA",  # Data wiping policy
        "android.permission.MANAGE_DEVICE_POLICY_DEVICE_IDENTIFIERS",
        "android.permission.KILL_ALL_BACKGROUND_PROCESSES",
        "android.permission.SYSTEM_ALERT_WINDOW",
        "android.permission.SET_TIME",
        "android.permission.SET_TIME_ZONE",
        "android.permission.FORCE_STOP_PACKAGES",
        "android.permission.RETRIEVE_WINDOW_CONTENT",
        "android.permission.MOUNT_FORMAT_FILESYSTEMS",
        "android.permission.ASEC_DESTROY",
        "android.permission.RECOVERY",
        "android.permission.CLEAR_APP_CACHE",
        "android.permission.UPDATE_CONFIG",
        "android.permission.UPDATE_TIME_ZONE_RULES",
        "android.permission.BIND_RESUME_ON_REBOOT_SERVICE",
        "android.permission.REQUEST_UNIQUE_ID_ATTESTATION",
        "android.permission.PROVIDE_REMOTE_CREDENTIALS",
        "android.permission.WRITE_SECURE_SETTINGS",
        "android.permission.READ_LOGS",
        "android.permission.APPROVE_INCIDENT_REPORTS",
        "android.permission.GET_PASSWORD",
        "android.permission.STATUS_BAR",
        "android.permission.MANAGE_APP_OPS_MODES",
        "android.permission.UPDATE_APP_OPS_STATS",
        "android.permission.INJECT_EVENTS",
        "android.permission.MODIFY_ACCESSIBILITY_DATA",
        "android.permission.SHUTDOWN",
        "android.permission.STOP_APP_SWITCHES",
        "android.permission.GET_TOP_ACTIVITY_INFO",
        "android.permission.INJECT_EVENTS",
        "android.permission.BIND_COMPANION_DEVICE_SERVICE",
        "android.permission.BIND_RUNTIME_PERMISSION_PRESENTER_SERVICE",
        "android.permission.MANAGE_HOTWORD_DETECTION",
        "android.permission.SUBSCRIBE_TO_KEYGUARD_LOCKED_STATE",
        "android.permission.BIND_AUTOFILL_SERVICE",
        "android.permission.BIND_CREDENTIAL_PROVIDER_SERVICE",
        "android.permission.BIND_TRANSLATION_SERVICE",
        "android.permission.MANAGE_VOICE_KEYPHRASES",
        "android.permission.BIND_TV_INPUT",
        "android.permission.BIND_TV_INTERACTIVE_APP",
        "android.permission.TUNER_RESOURCE_ACCESS",
        "android.permission.BIND_DEVICE_ADMIN",
        "android.permission.MANAGE_DEVICE_ADMINS",
        "android.permission.RESET_PASSWORD",
        "android.permission.LOCK_DEVICE",
        "android.permission.SET_ORIENTATION",
        "android.permission.SCHEDULE_PRIORITIZED_ALARM",
        "android.permission.INSTALL_PACKAGES",
        "android.permission.INSTALL_SELF_UPDATES",
        "android.permission.INSTALL_PACKAGE_UPDATES",
        "android.permission.INSTALL_DPC_PACKAGES",
        "android.permission.DELETE_PACKAGES",
        "android.permission.GRANT_RUNTIME_PERMISSIONS",
        "android.permission.REVOKE_RUNTIME_PERMISSIONS",
        "android.permission.CONTROL_ALWAYS_ON_VPN",
        "android.permission.CONTROL_VPN",
        "android.permission.MANAGE_COMPANION_DEVICES",
        "android.permission.CAPTURE_AUDIO_OUTPUT",
        "android.permission.CALL_AUDIO_INTERCEPTION",
        "android.permission.BRICK",
        "android.permission.MEDIA_CONTENT_CONTROL"
        "android.permission.MASTER_CLEAR",
        "android.permission.CALL_PRIVILEGED",
        "android.permission.REBOOT",
        "android.permission.BACKUP",
        "android.permission.RECOVER_KEYSTORE",
        "android.permission.CONFIRM_FULL_BACKUP",
        "android.permission.COPY_PROTECTED_DATA",
        "android.permission.ACCESS_CACHE_FILESYSTEM",
        "android.permission.GLOBAL_SEARCH_CONTROL",
        "android.permission.CRYPT_KEEPER",
        "android.permission.MANAGE_FINGERPRINT",
        "android.permission.MANAGE_FACE",
        "android.permission.SET_AND_VERIFY_LOCKSCREEN_CREDENTIALS",
        "android.permission.MANAGE_BIOMETRIC",
        "android.permission.USE_BIOMETRIC_INTERNAL",
        "android.permission.RESET_FINGERPRINT_LOCKOUT",
        "android.permission.CONTROL_KEYGUARD",
    ]
    medium_risk_permissions = [
        "android.permission.WRITE_VERIFICATION_STATE_E2EE_CONTACT_KEYS",
        "android.permission.BIND_CELL_BROADCAST_SERVICE",  # System-only, but could be critical in some scenarios
        "android.permission.READ_CELL_BROADCASTS",  # System-only, reading broadcasts
        "android.permission.ACCESS_MEDIA_LOCATION",  # Access to location metadata in media files
        "android.permission.USE_SIP",  # Access to SIP services
        "android.permission.ACTIVITY_RECOGNITION",  # Recognizes physical activity, medium risk
        "android.permission.HIGH_SAMPLING_RATE_SENSORS",  # High-frequency sensor data access
        "android.permission.USE_FINGERPRINT",  # Fingerprint data (deprecated)
        "android.permission.POST_NOTIFICATIONS",  # Posting notifications can be misused for spam
        "android.permission.CHANGE_WIFI_MULTICAST_STATE",
        # Multicast mode can impact battery life significantly with extended use
        "android.permission.WAKE_LOCK",  # Controls device sleep/wake state, potential for misuse if overused
        "android.permission.MODIFY_AUDIO_SETTINGS",
        "android.permission.DETECT_SCREEN_CAPTURE",
        "android.permission.DETECT_SCREEN_RECORDING",
        "android.permission.ACCESS_BROADCAST_RADIO",  # Hardware access with moderate security impact
        "android.permission.ACCESS_FM_RADIO",
        "android.permission.CAMERA_SEND_SYSTEM_EVENTS",
        "android.permission.CACHE_CONTENT",
        "android.permission.DISABLE_KEYGUARD",  # Disabling keyguard impacts device security but is commonly used
        "android.permission.REQUEST_PASSWORD_COMPLEXITY",
        "android.permission.GET_TASKS",  # Deprecated, limited access to task information
        "android.permission.INTERACT_ACROSS_PROFILES",  # Interaction within the same profile group
        "android.permission.START_CROSS_PROFILE_ACTIVITIES",  # Starts activities across profiles
        "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES",  # Configures profile interaction
        "android.permission.ACCESS_HIDDEN_PROFILES",
        "android.permission.QUERY_ADMIN_POLICY",  # Access admin policies across device
        "android.permission.MANAGE_SUBSCRIPTION_USER_ASSOCIATION",
        # User subscription management in enterprise environments
        "android.permission.MANAGE_DEVICE_POLICY_SUPPORT_MESSAGE",  # Manages support messaging in policies
        "android.permission.MANAGE_DEVICE_POLICY_ORGANIZATION_IDENTITY",
        "android.permission.MANAGE_DEVICE_POLICY_DEBUGGING_FEATURES",  # Debugging policy management
        "android.permission.MANAGE_DEVICE_POLICY_SAFE_BOOT",  # Safe boot policy management
        "android.permission.MANAGE_DEVICE_POLICY_ACCOUNT_MANAGEMENT",  # Account management policy
        "android.permission.MANAGE_DEVICE_POLICY_KEYGUARD",  # Keyguard policy management
        "android.permission.MANAGE_DEVICE_POLICY_PACKAGE_STATE",  # Hiding or suspending packages
        "android.permission.MANAGE_DEVICE_POLICY_STATUS_BAR",  # Status bar policy management
        "android.permission.MANAGE_DEVICE_POLICY_BLUETOOTH",  # Bluetooth policy management
        "android.permission.MANAGE_DEVICE_POLICY_FUN",  # Fun-related policy (UI elements)
        "android.permission.MANAGE_DEVICE_POLICY_AIRPLANE_MODE",
        "android.permission.MANAGE_DEVICE_POLICY_SCREEN_CAPTURE",  # Screen capture policy
        "android.permission.MANAGE_DEVICE_POLICY_PHYSICAL_MEDIA",  # Physical media policies
        "android.permission.MANAGE_DEVICE_POLICY_SMS",  # SMS policies
        "android.permission.MANAGE_DEVICE_POLICY_INPUT_METHODS",  # Input methods policy management
        "android.permission.MANAGE_DEVICE_POLICY_RESTRICT_PRIVATE_DNS",
        "android.permission.MANAGE_DEVICE_POLICY_SCREEN_CONTENT",  # Screen content restrictions
        "android.permission.MANAGE_DEVICE_POLICY_PRINTING",  # Printing restrictions
        "android.permission.MANAGE_DEVICE_POLICY_DEFAULT_SMS",  # Default SMS management
        "android.permission.MANAGE_DEVICE_POLICY_PROFILES",  # User profiles management
        "android.permission.MANAGE_DEVICE_POLICY_PROFILE_INTERACTION",  # Profile interaction policies
        "android.permission.MANAGE_DEVICE_POLICY_NEARBY_COMMUNICATION",  # Nearby communication policies
        "android.permission.MANAGE_DEVICE_POLICY_WALLPAPER",
        "android.permission.MANAGE_DEVICE_POLICY_ASSIST_CONTENT",  # Assist content policy
        "android.permission.MANAGE_DEVICE_POLICY_WINDOWS",  # Windows management policy
        "android.permission.MANAGE_DEVICE_POLICY_LOCALE",  # Locale settings policy
        "android.permission.MANAGE_DEVICE_POLICY_AUTOFILL",  # Autofill service policy
        "android.permission.MANAGE_DEVICE_POLICY_USERS",
        "android.permission.MANAGE_DEVICE_POLICY_PRIVATE_DNS",  # Private DNS policy
        "android.permission.MANAGE_DEVICE_POLICY_SETTINGS",  # Device settings management
        "android.permission.MANAGE_DEVICE_POLICY_ACCESSIBILITY",  # Accessibility services
        "android.permission.MANAGE_DEVICE_POLICY_METERED_DATA",  # Metered data usage control
        "android.permission.MANAGE_DEVICE_POLICY_PROXY",
        "android.permission.MANAGE_DEVICE_POLICY_BUGREPORT",  # Bug report requests
        "android.permission.MANAGE_DEVICE_POLICY_CONTENT_PROTECTION",  # Content protection policy
        "android.permission.MANAGE_DEVICE_POLICY_CAMERA_TOGGLE",  # Camera toggle policy
        "android.permission.MANAGE_DEVICE_POLICY_MICROPHONE_TOGGLE",  # Microphone toggle policy
        "android.permission.MANAGE_DEVICE_POLICY_ACROSS_USERS_SECURITY_CRITICAL",
        "android.permission.GET_PROCESS_STATE_AND_OOM_SCORE",  # Process state and OOM score access
        "android.permission.KILL_BACKGROUND_PROCESSES",
        "android.permission.SYSTEM_APPLICATION_OVERLAY",
        "android.permission.REQUEST_COMPANION_RUN_IN_BACKGROUND",
        "android.permission.REQUEST_COMPANION_PROFILE_APP_STREAMING",
        "android.permission.REQUEST_COMPANION_PROFILE_COMPUTER",
        "android.permission.REQUEST_COMPANION_SELF_MANAGED",
        "android.permission.COMPANION_APPROVE_WIFI_CONNECTIONS",
        "android.permission.READ_WALLPAPER_INTERNAL",
        "android.permission.SUGGEST_TELEPHONY_TIME_AND_ZONE",
        "android.permission.SUGGEST_MANUAL_TIME_AND_ZONE",
        "android.permission.SUGGEST_EXTERNAL_TIME",
        "android.permission.MANAGE_TIME_AND_ZONE_DETECTION",
        "android.permission.WRITE_SETTINGS",
        "android.permission.CHANGE_CONFIGURATION",
        "android.permission.WRITE_GSERVICES",
        "android.permission.MONITOR_DEVICE_CONFIG_ACCESS",
        "android.permission.MOUNT_UNMOUNT_FILESYSTEMS",
        "android.permission.MANAGE_CA_CERTIFICATES",
        "android.permission.WRITE_APN_SETTINGS",
        "android.permission.ASEC_ACCESS",
        "android.permission.ASEC_CREATE",
        "android.permission.ASEC_MOUNT_UNMOUNT",
        "android.permission.ASEC_RENAME",
        "android.permission.CHANGE_OVERLAY_PACKAGES",
        "android.permission.MANAGE_CREDENTIAL_MANAGEMENT_APP",
        "android.permission.UPDATE_FONTS",
        "android.permission.LIST_ENABLED_CREDENTIAL_PROVIDERS",
        "android.permission.PROVIDE_DEFAULT_ENABLED_CREDENTIAL_SERVICE",
        "android.permission.DUMP",
        "android.permission.CONTROL_UI_TRACING",
        "android.permission.READ_DROPBOX_DATA",
        "android.permission.GET_ACCOUNTS_PRIVILEGED",
        "android.permission.DIAGNOSTIC",
        "android.permission.UPDATE_DEVICE_STATS",
        "android.permission.GET_APP_OPS_STATS",
        "android.permission.GET_HISTORICAL_APP_OPS_STATS",
        "android.permission.FILTER_EVENTS",
        "android.permission.ACT_AS_PACKAGE_FOR_ACCESSIBILITY",
        "android.permission.ACCESSIBILITY_MOTION_EVENT_OBSERVING",
        "android.permission.FRAME_STATS",
        "android.permission.BIND_INPUT_METHOD",
        "android.permission.BIND_MIDI_DEVICE_SERVICE",
        "android.permission.TEST_INPUT_METHOD",
        "android.permission.BIND_TEXT_SERVICE",
        "android.permission.BIND_ROTATION_RESOLVER_SERVICE",
        "android.permission.BIND_VOICE_INTERACTION",
        "android.permission.BIND_FIELD_CLASSIFICATION_SERVICE",
        "android.permission.BIND_AUTOFILL_FIELD_CLASSIFICATION_SERVICE",
        "android.permission.BIND_CONTENT_CAPTURE_SERVICE",
        "android.permission.BIND_REMOTE_LOCKSCREEN_VALIDATION_SERVICE",
        "android.permission.KEYPHRASE_ENROLLMENT_APPLICATION",
        "android.permission.MODIFY_PARENTAL_CONTROLS",
        "android.permission.NOTIFY_TV_INPUTS",
        "android.permission.MEDIA_RESOURCE_OVERRIDE_PID",
        "android.permission.SCHEDULE_EXACT_ALARM",
        "android.permission.USE_EXACT_ALARM",
        "android.permission.REQUEST_INSTALL_PACKAGES",
        "android.permission.CLEAR_APP_USER_DATA",
        "android.permission.GET_APP_GRANTED_URI_PERMISSIONS",
        "android.permission.CLEAR_APP_GRANTED_URI_PERMISSIONS",
        "android.permission.DELETE_CACHE_FILES",
        "android.permission.FORCE_PERSISTABLE_URI_PERMISSIONS",
        "android.permission.MOVE_PACKAGE",
        "android.permission.CHANGE_COMPONENT_ENABLED_STATE",
        "android.permission.UPGRADE_RUNTIME_PERMISSIONS",
        "android.permission.WHITELIST_RESTRICTED_PERMISSIONS",
        "android.permission.WHITELIST_AUTO_REVOKE_PERMISSIONS",
        "android.permission.MANAGE_ROLE_HOLDERS",
        "android.permission.CONFIGURE_DISPLAY_BRIGHTNESS",
        "android.permission.CONTROL_WIFI_DISPLAY",
        "android.permission.CONFIGURE_DISPLAY_COLOR_MODE",
        "android.permission.CONTROL_DEVICE_LIGHTS",
        "android.permission.CONTROL_DISPLAY_SATURATION",
        "android.permission.ACCESS_AMBIENT_LIGHT_STATS",
        "android.permission.OVERRIDE_DISPLAY_MODE_REQUESTS",
        "android.permission.MODIFY_AUDIO_ROUTING",
        "android.permission.CAPTURE_TUNER_AUDIO_INPUT",
        "android.permission.CAPTURE_MEDIA_OUTPUT",
        "android.permission.MODIFY_AUDIO_SETTINGS_PRIVILEGED"
        "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS",
        "android.permission.CONTROL_LOCATION_UPDATES",
        "android.permission.PACKAGE_USAGE_STATS",
        "android.permission.OBSERVE_APP_USAGE",
        "android.permission.BATTERY_STATS",
        "android.permission.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS",
        "android.permission.MANAGE_SLICE_PERMISSIONS",
        "android.permission.BIND_APPWIDGET",
        "android.permission.SET_WALLPAPER_COMPONENT",
        "android.permission.SET_WALLPAPER_DIM_AMOUNT",
        "android.permission.READ_DREAM_STATE",
        "android.permission.WRITE_DREAM_STATE",
        "android.permission.BIND_SETTINGS_SUGGESTIONS_SERVICE",
        "android.permission.READ_NETWORK_USAGE_HISTORY",
        "android.permission.MANAGE_NETWORK_POLICY",
        "android.permission.PACKAGE_VERIFICATION_AGENT",
        "android.permission.MANAGE_ROLLBACKS",
        "android.permission.TEST_BIOMETRIC",
        "android.permission.MANAGE_BIOMETRIC_DIALOG",
        "android.permission.SET_BIOMETRIC_DIALOG_ADVANCED",
        "android.permission.TRUST_LISTENER",
        "android.permission.PROVIDE_TRUST_AGENT",
    ]
    normal_risk_permissions = [
        "android.permission.SET_DEFAULT_ACCOUNT_FOR_CONTACTS",
        "android.permission.SATELLITE_COMMUNICATION",  # Role-based, system-only, very limited usage
        "android.permission.READ_BASIC_PHONE_STATE",  # Access to basic phone state
        "android.permission.MANAGE_OWN_CALLS",  # Managing own calls
        "android.permission.CALL_COMPANION_APP",  # Companion app for call management
        "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS",
        "android.permission.INTERNET",
        "android.permission.ACCESS_NETWORK_STATE",
        "android.permission.ACCESS_WIFI_STATE",
        "android.permission.CHANGE_WIFI_STATE",
        "android.permission.VIBRATE",  # Basic vibrate access has minimal battery impact
        "android.permission.TRANSMIT_IR",
        "android.permission.REMOTE_AUDIO_PLAYBACK",
        "android.permission.GET_INTENT_SENDER_INTENT",
        "android.permission.REQUEST_COMPANION_START_FOREGROUND_SERVICES_FROM_BACKGROUND",
        "android.permission.REQUEST_COMPANION_USE_DATA_IN_BACKGROUND",
        "android.permission.REQUEST_COMPANION_PROFILE_WATCH",
        "android.permission.REQUEST_COMPANION_PROFILE_GLASSES",
        "android.permission.READ_PROJECTION_STATE",
        "android.permission.HIDE_OVERLAY_WINDOWS",
        "android.permission.SET_WALLPAPER",
        "android.permission.SET_WALLPAPER_HINTS",
        "android.permission.ALWAYS_UPDATE_WALLPAPER",
        "android.permission.SET_WALLPAPER",
        "android.permission.SET_WALLPAPER_HINTS",
        "android.permission.ALWAYS_UPDATE_WALLPAPER",
        "android.permission.EXPAND_STATUS_BAR",
        "com.android.launcher.permission.INSTALL_SHORTCUT",
        "com.android.launcher.permission.UNINSTALL_SHORTCUT",
        "android.permission.READ_SYNC_SETTINGS",
        "android.permission.WRITE_SYNC_SETTINGS",
        "android.permission.READ_SYNC_STATS",
        "android.permission.SET_SCREEN_COMPATIBILITY",
        "android.permission.READ_DEVICE_CONFIG",
        "android.permission.WRITE_DEVICE_CONFIG",
        "android.permission.WRITE_ALLOWLISTED_DEVICE_CONFIG",
        "android.permission.READ_WRITE_SYNC_DISABLED_MODE_CONFIG",
        "android.permission.READ_APP_SPECIFIC_LOCALES",
        "android.permission.SET_APP_SPECIFIC_LOCALECONFIG",
        "android.permission.GET_PACKAGE_SIZE",
        "android.permission.RECEIVE_BOOT_COMPLETED",
        "android.permission.BROADCAST_STICKY",
        "android.permission.PERSISTENT_ACTIVITY",
        "android.permission.SET_ANIMATION_SCALE",
        "android.permission.SET_PREFERRED_APPLICATIONS",
        "android.permission.CHANGE_NETWORK_STATE",
        "android.permission.ALLOW_ANY_CODEC_FOR_PLAYBACK",
        "android.permission.BIND_JOB_SERVICE",
        "android.permission.BIND_NETWORK_RECOMMENDATION_SERVICE",
        "android.permission.RESET_SHORTCUT_MANAGER_THROTTLING",
        "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS",
        "android.permission.CREDENTIAL_MANAGER_SET_ORIGIN",
        "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS",
        "android.permission.LAUNCH_CREDENTIAL_SELECTOR",
        "android.permission.SET_PROCESS_LIMIT",
        "android.permission.SET_ALWAYS_FINISH",
        "android.permission.SIGNAL_PERSISTENT_PROCESSES",
        "android.permission.REQUEST_INCIDENT_REPORT_APPROVAL",
        "android.permission.BIND_QUICK_SETTINGS_TILE",
        "android.permission.BIND_CONTROLS",
        "android.permission.FORCE_BACK",
        "android.permission.UNLIMITED_TOASTS",
        "android.permission.INTERNAL_SYSTEM_WINDOW",
        "android.permission.FREEZE_SCREEN",
        "android.permission.RETRIEVE_WINDOW_TOKEN",
        "android.permission.CHANGE_ACCESSIBILITY_VOLUME",
        "android.permission.OPEN_ACCESSIBILITY_DETAILS_SETTINGS",
        "android.permission.TEMPORARY_ENABLE_ACCESSIBILITY",
        "android.permission.BIND_PRINT_SERVICE",
        "android.permission.READ_PRINT_SERVICES",
        "android.permission.SET_SYSTEM_AUDIO_CAPTION",
        "android.permission.BIND_WALLPAPER",
        "android.permission.BIND_GAME_SERVICE",
        "android.permission.BIND_VISUAL_QUERY_DETECTION_SERVICE",
        "android.permission.BIND_WALLPAPER_EFFECTS_GENERATION_SERVICE",
        "android.permission.BIND_MUSIC_RECOGNITION_SERVICE",
        "android.permission.BIND_AUGMENTED_AUTOFILL_SERVICE",
        "android.permission.TV_VIRTUAL_REMOTE_CONTROLLER",
        "android.permission.CHANGE_HDMI_CEC_ACTIVE_SOURCE",
        "android.permission.READ_CONTENT_RATING_SYSTEMS",
        "android.permission.REGISTER_MEDIA_RESOURCE_OBSERVER",
        "android.permission.SET_POINTER_SPEED",
        "android.permission.SET_INPUT_CALIBRATION",
        "android.permission.SET_KEYBOARD_LAYOUT",
        "android.permission.TABLET_MODE",
        "android.permission.REQUEST_DELETE_PACKAGES",
        "com.android.permission.USE_INSTALLER_V2",
        "android.permission.READ_INSTALLED_SESSION_PATHS",
        "com.android.permission.USE_SYSTEM_DATA_LOADERS",
        "android.permission.MANAGE_SCOPED_ACCESS_DIRECTORY_PERMISSIONS",
        "android.permission.GET_RUNTIME_PERMISSIONS",
        "android.permission.RESTORE_RUNTIME_PERMISSIONS",
        "android.permission.LAUNCH_PERMISSION_SETTINGS",
        "android.permission.OBSERVE_GRANT_REVOKE_PERMISSIONS",
        "android.permission.MANAGE_ONE_TIME_PERMISSION_SESSIONS",
        "android.permission.QUERY_AUDIO_STATE",
        "android.permission.CAPTURE_AUDIO_HOTWORD",
        "android.permission.BATTERY_PREDICTION",
        "android.permission.USER_ACTIVITY",
        "android.permission.CHANGE_BACKGROUND_DATA_SETTING",
        "android.permission.STATSCOMPANION",
        "android.permission.READ_DREAM_SUPPRESSION",
        "android.permission.LAUNCH_MULTI_PANE_SETTINGS_DEEP_LINK",
        "android.permission.ACCESS_NOTIFICATION_POLICY",
        "android.permission.USE_COLORIZED_NOTIFICATIONS",
        "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE",
        "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE",
        "android.permission.BIND_CHOOSER_TARGET_SERVICE",

    ]

    if permission in high_risk_permissions:
        return "High"
    elif permission in medium_risk_permissions:
        return "Medium"
    elif permission in normal_risk_permissions:
        return "Normal"
    else:
        return "Unknown"


def analyze_certificate(cert_data):
    cert = crypto.load_certificate(crypto.FILETYPE_ASN1, cert_data)
    cert_details = {
        'subject': {
            'Country': cert.get_subject().C or "Not available",
            'State': cert.get_subject().ST or "Not available",
            'Locality': cert.get_subject().L or "Not available",
            'Organization': cert.get_subject().O or "Not available",
            'Organizational Unit': cert.get_subject().OU or "Not available",
            'Common Name': cert.get_subject().CN or "Not available"
        },
        'issuer': {
            'Country': cert.get_issuer().C or "Not available",
            'State': cert.get_issuer().ST or "Not available",
            'Locality': cert.get_issuer().L or "Not available",
            'Organization': cert.get_issuer().O or "Not available",
            'Organizational Unit': cert.get_issuer().OU or "Not available",
            'Common Name': cert.get_issuer().CN or "Not available"
        },
        'serial_number': cert.get_serial_number(),
        'version': cert.get_version(),
        'signature_algorithm': cert.get_signature_algorithm().decode(),
        'valid_from': cert.get_notBefore().decode(),
        'valid_to': cert.get_notAfter().decode()
    }
    return cert_details


def parse_manifest(axml):
    try:
        manifest_xml = minidom.parseString(axml.get_xml())
        return manifest_xml
    except Exception as e:
        raise Exception(f"Failed to parse manifest XML: {e}")


def get_android_version(sdk_version):
    android_versions = {
        1: "Android 1.0",
        2: "Android 1.1",
        3: "Android 1.5 Cupcake",
        4: "Android 1.6 Donut",
        5: "Android 2.0 Eclair",
        6: "Android 2.0.1 Eclair",
        7: "Android 2.1 Eclair",
        8: "Android 2.2 Froyo",
        9: "Android 2.3 Gingerbread",
        10: "Android 2.3.3 Gingerbread",
        11: "Android 3.0 Honeycomb",
        12: "Android 3.1 Honeycomb",
        13: "Android 3.2 Honeycomb",
        14: "Android 4.0 Ice Cream Sandwich",
        15: "Android 4.0.3 Ice Cream Sandwich",
        16: "Android 4.1 Jelly Bean",
        17: "Android 4.2 Jelly Bean",
        18: "Android 4.3 Jelly Bean",
        19: "Android 4.4 KitKat",
        20: "Android 4.4W KitKat Wear",
        21: "Android 5.0 Lollipop",
        22: "Android 5.1 Lollipop",
        23: "Android 6.0 Marshmallow",
        24: "Android 7.0 Nougat",
        25: "Android 7.1 Nougat",
        26: "Android 8.0 Oreo",
        27: "Android 8.1 Oreo",
        28: "Android 9 Pie",
        29: "Android 10",
        30: "Android 11",
        31: "Android 12",
        32: "Android 12L",
        33: "Android 13",
        34: "Android 14",
        35: "Android 15 Vanilla Ice Cream"
    }
    return android_versions.get(sdk_version, "Unknown Android Version")



def analyze_apk(apk_path):
    try:
        # Load and analyze APK file
        a, d, dx = AnalyzeAPK(apk_path)

        # Extract metadata
        min_sdk_version = a.get_min_sdk_version() or "Not available"
        target_sdk_version = a.get_target_sdk_version() or "Not available"

        # Check permissions for external storage
        permissions = a.get_permissions()
        has_external_storage_permission = (
                "android.permission.WRITE_EXTERNAL_STORAGE" in permissions or
                "android.permission.READ_EXTERNAL_STORAGE" in permissions
        )

        # Parse manifest
        manifest_axml = a.get_android_manifest_axml()
        manifest_xml = minidom.parseString(manifest_axml.get_xml())

        # Check for Backup and Debuggable Flags
        application_elements = manifest_xml.getElementsByTagName('application')
        allow_backup = application_elements[0].getAttribute(
            'android:allowBackup') if application_elements else "Not available"
        debuggable = application_elements[0].getAttribute(
            'android:debuggable') if application_elements else "Not available"

        # Certificate Analysis
        certificates = []
        for cert_data in a.get_certificates_der_v2():
            cert = crypto.load_certificate(crypto.FILETYPE_ASN1, cert_data)
            cert_details = {
                'subject': {
                    'Country': cert.get_subject().C or 'Not available',
                    'State': cert.get_subject().ST or 'Not available',
                    'Locality': cert.get_subject().L or 'Not available',
                    'Organization': cert.get_subject().O or 'Not available',
                    'Organizational Unit': cert.get_subject().OU or 'Not available',
                    'Common Name': cert.get_subject().CN or 'Not available',
                },
                'issuer': {
                    'Country': cert.get_issuer().C or 'Not available',
                    'State': cert.get_issuer().ST or 'Not available',
                    'Locality': cert.get_issuer().L or 'Not available',
                    'Organization': cert.get_issuer().O or 'Not available',
                    'Organizational Unit': cert.get_issuer().OU or 'Not available',
                    'Common Name': cert.get_issuer().CN or 'Not available',
                },
                'serial_number': cert.get_serial_number(),
                'version': cert.get_version(),
                'signature_algorithm': cert.get_signature_algorithm().decode(),
                'valid_from': datetime.strptime(cert.get_notBefore().decode(), "%Y%m%d%H%M%SZ").strftime(
                    "%Y-%m-%d %H:%M:%S"),
                'valid_to': datetime.strptime(cert.get_notAfter().decode(), "%Y%m%d%H%M%SZ").strftime(
                    "%Y-%m-%d %H:%M:%S"),
            }
            certificates.append(cert_details)

        # Metadata information
        metadata_info = {
            'package_name': a.get_package(),
            'version_name': a.get_androidversion_name(),
            'version_code': a.get_androidversion_code(),
            'min_sdk_version': min_sdk_version,
            'min_android_version': get_android_version(
                int(min_sdk_version)) if min_sdk_version != "Not available" else "Unknown",
            'target_sdk_version': target_sdk_version,
            'target_android_version': get_android_version(
                int(target_sdk_version)) if target_sdk_version != "Not available" else "Unknown",
            'allow_backup': allow_backup,
            'debuggable': debuggable,
            'has_external_storage_backup': "Yes" if has_external_storage_permission and allow_backup == "true" else "No",
        }

        # Permissions analysis
        permissions_analysis = []
        for permission in permissions:
            permissions_analysis.append({
                'permission': permission,
                'description': get_permission_description(permission),
                'risk_level': get_permission_risk_level(permission)
            })

        # Components (Activities, Services, Receivers, Providers)
        activities = a.get_activities() or ["No activities found"]
        services = a.get_services() or ["No services found"]
        receivers = a.get_receivers() or ["No receivers found"]
        providers = a.get_providers() or ["No providers found"]

        # Vulnerability analysis
        vulnerabilities = analyze_vulnerabilities(dx, a)

        # Final results dictionary
        return {
            'metadata_info': metadata_info,
            'certificates': certificates,
            'permissions_analysis': permissions_analysis,
            'activities': activities,
            'services': services,
            'receivers': receivers,
            'providers': providers,
            'insecure_storage': vulnerabilities['insecure_storage']
        }

    except Exception as e:
        raise Exception(f"Error during analysis: {e}")



def generate_pdf_report(results, output_path):
    doc = SimpleDocTemplate(output_path, pagesize=letter)
    styles = getSampleStyleSheet()
    elements = []

    elements.append(Paragraph("APK Analysis Results", styles['Title']))
    elements.append(Spacer(1, 12))
    elements.append(Paragraph("General Information", styles['Heading2']))
    elements.append(Paragraph(f"Package Name: {results['metadata_info']['package_name']}", styles['Normal']))
    elements.append(Paragraph(f"Version Code: {results['metadata_info']['version_code']}", styles['Normal']))
    elements.append(Paragraph(f"Version Name: {results['metadata_info']['version_name']}", styles['Normal']))
    elements.append(Paragraph(
        f"Min SDK Version: {results['metadata_info']['min_sdk_version']} ({results['metadata_info']['min_android_version']})",
        styles['Normal']))
    elements.append(Paragraph(
        f"Target SDK Version: {results['metadata_info']['target_sdk_version']} ({results['metadata_info']['target_android_version']})",
        styles['Normal']))

    elements.append(Paragraph("Permissions", styles['Heading2']))
    for permission in results['permissions_analysis']:
        elements.append(Paragraph(f"Permission: {permission['permission']}", styles['Normal']))
        elements.append(Paragraph(f"Description: {permission['description']}", styles['Normal']))
        elements.append(Paragraph(f"Risk Level: {permission['risk_level']}", styles['Normal']))
        elements.append(Spacer(1, 6))

    doc.build(elements)


@static_analysis.route('/static_analysis/upload', methods=['GET', 'POST'])
@login_required
def upload_file():
    if request.method == 'POST':
        if 'file' not in request.files:
            flash('No file part')
            return redirect(request.url)
        file = request.files['file']
        if file.filename == '':
            flash('No selected file')
            return redirect(request.url)
        if file and allowed_file(file.filename):
            filename = file.filename
            file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
            file.save(file_path)

            try:
                # Perform APK analysis
                results = analyze_apk(file_path)
                flash('Analysis complete')
                return render_template('static_analysis_result.html', results=results)
            except Exception as e:
                flash(f"Error: {e}")
                return redirect(request.url)

    return render_template('static_analysis_upload.html')


@static_analysis.route('/static_analysis/download_report/<filename>', methods=['GET'])
@login_required
def download_report(filename):
    file_path = os.path.join(app.config['OUTPUT_FOLDER'], f"{filename}.pdf")
    try:
        apk_path = os.path.join(app.config['UPLOAD_FOLDER'], f"{filename}.apk")
        results = analyze_apk(apk_path)
        generate_pdf_report(results, file_path)
        return send_file(file_path, as_attachment=True)
    except Exception as e:
        flash(f"Error generating report: {e}")
        return redirect(request.referrer)


if __name__ == '__main__':
    app.run(debug=True)
