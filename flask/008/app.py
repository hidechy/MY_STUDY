from flask import Flask

from flask_sqlalchemy import SQLAlchemy



app = Flask(__name__)



#app.config['SQLALCHEMY_DATABASE_URI'] = "mysql://flaskuser:hidechy4819@localhost/flasktest"
app.config['SQLALCHEMY_DATABASE_URI'] = "mysql://mysql_outer_user2:hidechy4819@160.16.145.135/brain"






db = SQLAlchemy(app)



class Post(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    title = db.Column(db.String(50), nullable=False)
    detail = db.Column(db.String(300))
    due = db.Column(db.DateTime, nullable=False)



@app.route('/')
def index():
    return 'Hello World'

if __name__ == '__main__':
    app.run(debug=True)
