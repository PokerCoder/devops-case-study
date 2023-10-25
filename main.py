from flask import Flask

app = Flask(__name__)


@app.route("/")
def index():
    with open('test.txt') as f:
        content = f.read()
    return content
