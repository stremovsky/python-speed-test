FROM python:3.10-bullseye
WORKDIR /app
#COPY requirements.txt .
#RUN pip install --no-cache-dir -r requirements.txt
COPY japronto ./japronto/
RUN cd japronto && python setup.py bdist_wheel && ls -al && cd ..
COPY hello.py .
CMD [ "python", "./hello.py" ]
EXPOSE 8080
