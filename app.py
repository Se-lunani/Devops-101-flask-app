# app.py
from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    # When the user visits the root URL, they get a simple greeting.
    return "Hello, DevOps!"

@app.route('/api/message')
def message():
    # This route returns a JSON response with a message.
    return jsonify({'message': 'Hello, DevOps!'})

if __name__ == '__main__':
    # The application will run on all network interfaces on port 5000.
    app.run(host='0.0.0.0', port=5000)

