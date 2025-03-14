from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_bcrypt import Bcrypt
from flask_login import LoginManager
from flask_migrate import Migrate
from config import Config

db = SQLAlchemy()
bcrypt = Bcrypt()
login_manager = LoginManager()
migrate = Migrate()

def create_app():
    app = Flask(__name__)
    app.config.from_object(Config)

    db.init_app(app)
    bcrypt.init_app(app)
    login_manager.init_app(app)
    migrate.init_app(app, db)

    from app.google_auth import oauth
    # Initialize OAuth
    oauth.init_app(app)

    from app.routes import main
    app.register_blueprint(main)

    from app.static_analysis import static_analysis
    app.register_blueprint(static_analysis, url_prefix='/static_analysis')

    from app.malware_detection import malware_detection
    app.register_blueprint(malware_detection, url_prefix='/malware_detection')

    from app.manual_analysis import manual_analysis
    app.register_blueprint(manual_analysis)



    return app
