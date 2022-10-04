from flask import Flask

from flask import render_template

app = Flask(__name__)

bullets = [
    'tokyo',
    'osaka',
    'hiroshima',
    'fukuoka',
    'okinawa',
]

@app.route("/")
def aaa():
    return render_template('hello.html', bullets=bullets)




