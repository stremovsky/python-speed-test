#!/bin/bash

docker run -p 8080:8080 -d -it --rm --name gunicorn-hello-world gunicorn-hello-world
