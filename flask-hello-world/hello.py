from flask import Flask
from werkzeug.serving import WSGIRequestHandler

#enable HTTP/1.1 for Keep-Alive
WSGIRequestHandler.protocol_version = "HTTP/1.1"
app = Flask(__name__)

@app.route('/hello')
def hello():
    return "Hello World!"

app.run(host='0.0.0.0', port=8080, debug=False)
