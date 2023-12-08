FROM nginx:mainline-alpine3.18
WORKDIR /app
ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 py3-pip python3-dev gcc libc-dev linux-headers && ln -sf python3 /usr/bin/python
COPY default.conf /etc/nginx/conf.d/
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY hello.py exec.sh .
#CMD [ "python", "./hello.py" ]
EXPOSE 8080
#CMD ["nginx", "-g", "daemon off;"]
CMD ["./exec.sh"]
