#!/bin/bash

DIRS=("bottle-hello-world" "fastapi-hello-world" "flask-hello-world" "granian-asgi-hello-world" "granian-rsgi-hello-world" "gunicorn-hello-world" "japronto-hello-world" "nginx-uwsgi-hello-world" "uwsgi-hello-world")

for NAME in "${DIRS[@]}"; do
  echo
  echo "Running text: $NAME"
  docker run -p 8080:8080 -d -it --rm --name $NAME $NAME
  sleep 1
  curl localhost:8080/hello
  echo
  ab -c 10 -n 10000 http://localhost:8080/hello 2>/dev/null | grep "Requests per second"
  ab -k -c 10 -n 10000 http://localhost:8080/hello 2>/dev/null | grep "Requests per second"
  echo
  docker kill $NAME
  sleep 1
done
