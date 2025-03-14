from flask import Blueprint, render_template, url_for, flash, redirect, request
from app import db, bcrypt
from app.models import User
from flask_login import login_user, current_user, logout_user, login_required
from app.forms import RegistrationForm, LoginForm, UpdateAccountForm, AdminAddUserForm, ChangePasswordForm

main = Blueprint('main', __name__)

@main.route("/")
def landing():
    if current_user.is_authenticated:
        return redirect(url_for('main.home'))
    return render_template('landing.html')

@main.route("/home")
@login_required
def home():
    return render_template('home.html')

@main.route("/register", methods=['GET', 'POST'])
def register():
    if current_user.is_authenticated:
        return redirect(url_for('main.home'))
    form = RegistrationForm()
    if form.validate_on_submit():
        existing_user = User.query.filter_by(username=form.username.data).first()
        if existing_user:
            flash('Username already exists. Please choose a different one.', 'danger')
            return redirect(url_for('main.register'))

        existing_email = User.query.filter_by(email=form.email.data).first()
        if existing_email:
            flash('Email already exists. Please choose a different one.', 'danger')
            return redirect(url_for('main.register'))

        hashed_password = bcrypt.generate_password_hash(form.password.data).decode('utf-8')
        user = User(first_name=form.first_name.data, last_name=form.last_name.data, username=form.username.data,
                    email=form.email.data, password=hashed_password, gender=form.gender.data)

        # Set the first registered user as admin
        if User.query.count() == 0:
            user.is_admin = True

        db.session.add(user)
        db.session.commit()
        flash('Your account has been created! You are now able to log in', 'success')
        return redirect(url_for('main.login'))
    return render_template('register.html', title='Register', form=form)

@main.route("/login", methods=['GET', 'POST'])
def login():
    if current_user.is_authenticated:
        return redirect(url_for('main.home'))
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter((User.email == form.email_or_username.data) |
                                 (User.username == form.email_or_username.data)).first()
        if user and bcrypt.check_password_hash(user.password, form.password.data):
            login_user(user, remember=form.remember.data)
            next_page = request.args.get('next')
            flash('Login successful!', 'success')
            return redirect(next_page) if next_page else redirect(url_for('main.home'))
        else:
            flash('Login Unsuccessful. Please check email/username and password', 'danger')
    return render_template('login.html', title='Login', form=form)

@main.route("/logout")
def logout():
    logout_user()
    flash('You have been logged out.', 'success')
    return redirect(url_for('main.landing'))


@main.route("/dynamic_analysis")
def dynamic_analysis():
    mobsf_url = "http://localhost:8000/"
    return redirect(mobsf_url)


@main.route("/admin")
@login_required
def admin():
    if not current_user.is_admin:
        flash('You do not have permission to access this page', 'danger')
        return redirect(url_for('main.home'))
    users = User.query.all()
    form = AdminAddUserForm()  # or any form instance if needed
    return render_template('admin.html', users=users, form=form)


@main.route("/admin/user/<int:user_id>")
@login_required
def user_details(user_id):
    if not current_user.is_admin:
        flash('You do not have permission to access this page', 'danger')
        return redirect(url_for('main.home'))
    user = User.query.get_or_404(user_id)
    return render_template('user_details.html', user=user)

@main.route("/admin/delete_user/<int:user_id>", methods=['POST'])
@login_required
def delete_user(user_id):
    if not current_user.is_admin:
        flash('You do not have permission to access this page', 'danger')
        return redirect(url_for('main.home'))
    user = User.query.get_or_404(user_id)
    if user.is_admin:
        flash('You cannot delete an admin user.', 'danger')
        return redirect(url_for('main.admin'))
    db.session.delete(user)
    db.session.commit()
    flash('User has been deleted!', 'success')
    return redirect(url_for('main.admin'))


@main.route("/admin/reset_password/<int:user_id>", methods=['POST'])
@login_required
def reset_password(user_id):
    if not current_user.is_admin:
        flash('You do not have permission to access this page', 'danger')
        return redirect(url_for('main.home'))
    user = User.query.get_or_404(user_id)
    user.password = bcrypt.generate_password_hash('defaultpassword').decode('utf-8')
    db.session.commit()
    flash('User password has been reset to defaultpassword.', 'success')
    return redirect(url_for('main.admin'))

@main.route("/profile", methods=['GET', 'POST'])
@login_required
def profile():
    form = UpdateAccountForm()
    password_form = ChangePasswordForm()
    if form.validate_on_submit() and password_form.validate_on_submit():
        current_user.first_name = form.first_name.data
        current_user.last_name = form.last_name.data
        current_user.username = form.username.data
        current_user.email = form.email.data
        current_user.gender = form.gender.data

        if bcrypt.check_password_hash(current_user.password, password_form.current_password.data):
            hashed_password = bcrypt.generate_password_hash(password_form.new_password.data).decode('utf-8')
            current_user.password = hashed_password
            flash('Your password has been updated!', 'success')
        else:
            flash('Current password is incorrect.', 'danger')

        db.session.commit()
        flash('Your account has been updated!', 'success')
        return redirect(url_for('main.profile'))
    elif request.method == 'GET':
        form.first_name.data = current_user.first_name
        form.last_name.data = current_user.last_name
        form.username.data = current_user.username
        form.email.data = current_user.email
        form.gender.data = current_user.gender
    return render_template('profile.html', title='Profile', form=form, password_form=password_form)

@main.route("/admin/user_management", methods=['GET', 'POST'])
@login_required
def user_management():
    if not current_user.is_admin:
        flash('You do not have permission to access this page', 'danger')
        return redirect(url_for('main.home'))
    form = AdminAddUserForm()
    if form.validate_on_submit():
        existing_user = User.query.filter_by(username=form.username.data).first()
        existing_email = User.query.filter_by(email=form.email.data).first()
        if existing_user or existing_email:
            flash('User already exists with this username or email.', 'danger')
            return redirect(url_for('main.user_management'))

        hashed_password = bcrypt.generate_password_hash(form.password.data).decode('utf-8')
        user = User(first_name=form.first_name.data, last_name=form.last_name.data, username=form.username.data,
                    email=form.email.data, password=hashed_password, gender=form.gender.data)
        db.session.add(user)
        db.session.commit()
        flash('New user has been created successfully!', 'success')
        return redirect(url_for('main.user_management'))
    return render_template('user_management.html', form=form)