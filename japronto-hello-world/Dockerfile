FROM python:3.10-bullseye
RUN cd /tmp ; git clone https://github.com/squeaky-pl/japronto.git ; cd japronto ; python setup.py install ; rm -rf /tmp/japronto
WORKDIR /app
COPY hello.py .
CMD [ "python", "./hello.py" ]
EXPOSE 8080
