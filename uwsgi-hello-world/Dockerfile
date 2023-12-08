FROM python:3.10-bullseye
WORKDIR /app
#RUN apk add --update --no-cache libc-dev linux-headers && ln -sf python3 /usr/bin/python
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY hello.py .
CMD [ "uwsgi", "--http", "0.0.0.0:8080", "--wsgi-file", "hello.py", "--master"]
EXPOSE 8080
