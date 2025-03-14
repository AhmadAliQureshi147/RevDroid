from authlib.integrations.flask_client import OAuth
from flask import url_for, redirect, session, flash
from app.models import User  # Replace with your User model
from app import db  # Replace with your database instance
from flask_login import login_user

# Initialize OAuth
oauth = OAuth()

# Register Google OAuth
google = oauth.register(
    name='google',
    client_id='788637411060-5f1tvedhld2nkrg2il96jnpq3jpu402p.apps.googleusercontent.com',  # Replace with your Google Client ID
    client_secret='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',  # Replace with your Google Client Secret
    access_token_url='https://accounts.google.com/o/oauth2/token',
    authorize_url='https://accounts.google.com/o/oauth2/auth',
    api_base_url='https://www.googleapis.com/oauth2/v2/',
    client_kwargs={'scope': 'openid email profile'}
)

# Google Login Functionality
def google_login():
    redirect_uri = url_for('google_auth.google_callback', _external=True)
    return google.authorize_redirect(redirect_uri)

# Google Callback Functionality
def google_callback():
    token = google.authorize_access_token()  # Fetch the access token
    user_info = google.get('userinfo').json()  # Fetch user info from Google

    if not user_info:
        flash('Failed to fetch user information from Google.', 'danger')
        return redirect(url_for('main.login'))  # Replace with your login route

    # Check if the user exists in the database
    user = User.query.filter_by(email=user_info['email']).first()

    if not user:
        # Create a new user
        user = User(
            email=user_info['email'],
            username=user_info['email'].split('@')[0],
            password="oauth_user"  # Placeholder password
        )
        db.session.add(user)
        db.session.commit()

    # Log the user in
    login_user(user)
    flash('Logged in successfully with Google!', 'success')
    return redirect(url_for('main.home'))  # Replace with your home route
