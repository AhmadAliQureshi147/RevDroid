from flask import Flask, request, jsonify
from flask_mail import Mail, Message

app = Flask(__name__)

# Configure Flask-Mail
app.config['MAIL_SERVER'] = 'smtp.gmail.com'
app.config['MAIL_PORT'] = 587
app.config['MAIL_USE_TLS'] = True
app.config['MAIL_USE_SSL'] = False
app.config['MAIL_USERNAME'] = 'contactrevdroid@gmail.com'  # Your email address
app.config['MAIL_PASSWORD'] = '12345@revdroid'  # Your email password (use App Passwords if 2FA is enabled)


mail = Mail(app)

# Import routes after app and mail are initialized
from app import routes