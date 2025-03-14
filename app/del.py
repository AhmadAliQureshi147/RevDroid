from app import create_app, db
from app.models import User

app = create_app()

with app.app_context():
    # Drop all tables
    db.drop_all()

    # Recreate all tables
    db.create_all()

    print("All records deleted and tables recreated.")
