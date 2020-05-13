import socket
from flask import render_template
from app import app

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/info')
def info():
    return "Hostname: {}".format(socket.gethostname())

