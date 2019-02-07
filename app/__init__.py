from flask import Flask

app = Flask(__name__)

app.confing['SECRET_KEY'] = '1234vnfvjnviujwwvjivgjwv'

from app import routes 
