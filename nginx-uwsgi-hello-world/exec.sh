#!/bin/sh

uwsgi --socket 127.0.0.1:18080 --wsgi-file hello.py --master &
nginx -g 'daemon off;'
