from flask import Flask, requests
import json

app2 = Flask(__name__)

@app2.route('/')
def hello_world():
    return 'Hello World from app 2!'

if __name__ == '__main__':
    app2.run(debug=True, host='0.0.0.0')