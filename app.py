from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<h1>Hello World! Welcome to the End-to-End (N-to-N) DevOps Lifecycle!</h1>'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
