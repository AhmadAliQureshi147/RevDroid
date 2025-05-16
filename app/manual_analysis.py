from flask import Blueprint, render_template, request, flash, redirect, jsonify, send_from_directory, abort
from flask_login import login_required
import os
import subprocess

manual_analysis = Blueprint('manual_analysis', __name__)

# Define folders for uploads and outputs
UPLOAD_FOLDER = os.path.join(os.getcwd(), 'uploads')
OUTPUT_FOLDER = os.path.join(os.getcwd(), 'output/apktool')
APKTOOL_CLI_PATH = 'apktool'  # Use the correct command for Linux
ALLOWED_EXTENSIONS = {'apk'}

# Ensure required directories exist
os.makedirs(UPLOAD_FOLDER, exist_ok=True)
os.makedirs(OUTPUT_FOLDER, exist_ok=True)


def allowed_file(filename):
    """Check if the uploaded file is an APK."""
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


def decompile_apk(apk_path, output_dir):
    """Runs APKTool to decompile the APK."""
    apk_abs_path = os.path.abspath(apk_path)
    output_abs_path = os.path.abspath(output_dir)
    apktool_cmd = [APKTOOL_CLI_PATH, 'd', '-f', apk_abs_path, '-o', output_abs_path]

    try:
        print(f"Running command: {' '.join(apktool_cmd)}")  # Log the command
        result = subprocess.run(apktool_cmd, capture_output=True, text=True, timeout=300)  # Timeout after 5 minutes
        if result.returncode != 0:
            print(f"APKTool Error: {result.stderr}")
            raise Exception(f"APKTool Error: {result.stderr}")
        return True
    except subprocess.TimeoutExpired:
        print("Decompilation timed out.")
        return "Decompilation timed out. Please try with a smaller APK."
    except Exception as e:
        print(f"Exception: {e}")
        return str(e)


@manual_analysis.route('/manual_analysis', methods=['GET', 'POST'])
def manual_analysis_home():
    """Renders the manual analysis home page and handles APK uploads."""
    if request.method == 'POST':
        if 'file' not in request.files:
            flash('No file uploaded', 'error')
            return redirect(request.url)

        file = request.files['file']
        if file.filename == '' or not allowed_file(file.filename):
            flash('Invalid file type. Only APK files are allowed.', 'error')
            return redirect(request.url)

        filename = file.filename
        apk_path = os.path.join(UPLOAD_FOLDER, filename)
        file.save(apk_path)

        output_dir = os.path.join(OUTPUT_FOLDER, filename.split('.')[0])
        os.makedirs(output_dir, exist_ok=True)

        decompilation_result = decompile_apk(apk_path, output_dir)

        if decompilation_result is not True:
            flash(f"Decompilation failed: {decompilation_result}", 'error')
            return redirect(request.url)

        flash('APK successfully decompiled!', 'success')
        return redirect(f'/browse/{filename.split(".")[0]}')

    return render_template('index.html')


@manual_analysis.route('/browse/<apk_name>', methods=['GET'])
@login_required
def browse_decompiled(apk_name):
    """List all files in the decompiled APK directory."""
    decompiled_path = os.path.join(OUTPUT_FOLDER, apk_name)

    if not os.path.exists(decompiled_path):
        return jsonify({"error": "Decompiled APK not found"}), 404

    # Collect all files relative to the decompiled directory
    files = []
    for root, _, filenames in os.walk(decompiled_path):
        for filename in filenames:
            file_path = os.path.relpath(os.path.join(root, filename), decompiled_path)
            files.append(file_path)

    return render_template('browse.html', apk_name=apk_name, files=files)


@manual_analysis.route('/view/<apk_name>/<path:file_path>', methods=['GET'])
@login_required
def view_file(apk_name, file_path):
    """View the content of a specific decompiled file."""
    decompiled_path = os.path.join(OUTPUT_FOLDER, apk_name, file_path)

    if not os.path.exists(decompiled_path):
        return abort(404)

    # Check if it's a binary file (e.g., image)
    if file_path.endswith(('.png', '.jpg', '.jpeg', '.gif', '.bmp', '.webp')):
        return send_from_directory(os.path.dirname(decompiled_path), os.path.basename(decompiled_path))

    try:
        with open(decompiled_path, 'r', encoding="utf-8", errors="ignore") as file:
            content = file.read()
    except Exception as e:
        return f"Error reading file: {e}", 500

    return render_template('view.html', apk_name=apk_name, file_path=file_path, content=content)


@manual_analysis.route('/download/<apk_name>/<path:file_path>', methods=['GET'])
@login_required
def download_file(apk_name, file_path):
    """Download a specific decompiled file."""
    decompiled_path = os.path.join(OUTPUT_FOLDER, apk_name, file_path)

    if not os.path.exists(decompiled_path):
        return abort(404)

    # Send the file for download
    return send_from_directory(os.path.dirname(decompiled_path), os.path.basename(decompiled_path), as_attachment=True)

