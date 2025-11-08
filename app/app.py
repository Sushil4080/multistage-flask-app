from flask import Flask

app = Flask(__name__)

@app.route("/")
def index():
    return {"message": "Hello from Multi-Stage Flask App with Gunicorn & NGINX!"}

