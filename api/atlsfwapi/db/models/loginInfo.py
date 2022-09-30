from atlsfwapi import db


class LoginInfo(db.Model):
    __tablename__ = 'loginInfo'
    id = db.Column(db.Integer, primary_key=True, unique=True)
    username = db.Column(db.String(80), primary_key=True, nullable=False)
    password = db.Column(db.String(80), primary_key=True, nullable=False)
    email = db.Column(db.String(2000), primary_key=False, nullable=False)

