from atlsfwapi import db

//new comment so that i can commit
class suggestions(db.Model):
    __tablename__ = 'suggestions'
    id = db.Column(db.Integer, primary_key=True, unique=True)
    type = db.Column(db.String(40), primary_key=True)
    brand = db.Column(db.String(80), primary_key=True)
    price = db.Column(db.Double, primary_key=False)
    material = db.Column(db.String(60), primary_key=False)
    tags = db.Column(db.String(2000), primary_key=False)

