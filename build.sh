#!/bin/bash

DIRS=("bottle-hello-world" "fastapi-hello-world" "flask-hello-world" "granian-asgi-hello-world" "granian-rsgi-hello-world" "gunicorn-hello-world" "japronto-hello-world" "nginx-uwsgi-hello-world" "uwsgi-hello-world")

for NAME in "${DIRS[@]}"; do
  echo
  echo "Creating container: $NAME"
  cd $NAME ; ./build.sh ; cd ..
done
