#!/bin/bash

docker run -p 8080:8080 -d -it --rm --name nginx-uwsgi-hello-world nginx-uwsgi-hello-world
