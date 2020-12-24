#!/usr/local/bin/python3
# -*- coding:utf-8 -*-
import hashlib
from flask import Flask
from flask import request
from gevent.pywsgi import WSGIServer

app = Flask(__name__)

@app.route('/sha256', methods=['POST'])
def sha256():
  sha256 = hashlib.sha256()
  sha256.update(request.get_data())
  return sha256.hexdigest()

if __name__=='__main__':
  WSGIServer(('', 5000), app).serve_forever()