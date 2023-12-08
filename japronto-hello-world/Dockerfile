FROM python:3.10-bullseye
WORKDIR /app
#COPY requirements.txt .
#RUN pip install --no-cache-dir -r requirements.txt
RUN cd /tmp ; git clone git@github.com:squeaky-pl/japronto.git ; cd japronto python setup.py install
#RUN cd japronto && python setup.py bdist_wheel && ls -al && cd ..
COPY hello.py .
CMD [ "python", "./hello.py" ]
EXPOSE 8080
