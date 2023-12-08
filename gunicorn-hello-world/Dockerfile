FROM python:3.10-bullseye
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY hello.py .
CMD [ "gunicorn", "hello:app", "--bind", "0.0.0.0:8080"]
EXPOSE 8080
