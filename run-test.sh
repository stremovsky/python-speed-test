#!/bin/bash

DIRS=("bottle-hello-world" "fastapi-hello-world" "flask-hello-world" "granian-asgi-hello-world" "granian-rsgi-hello-world" "gunicorn-hello-world" "japronto-hello-world" "nginx-uwsgi-hello-world" "uwsgi-hello-world")

for NAME in "${DIRS[@]}"; do
  echo
  echo "Running text: $NAME"
  docker run -p 8080:8080 -d -it --rm --name $NAME $NAME
  sleep 1
  curl localhost:8080/hello
  echo
  docker kill $NAME
  sleep 1
done
