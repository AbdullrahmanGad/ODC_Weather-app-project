#Selecting the desired image.
FROM python:3.9-slim
#Creating Working Directory.
WORKDIR /app
#Copying Necessary Files.
COPY . .
#Installing requirements.
RUN pip install -r requirements.txt
#Exposing on default FLASK PORT.
EXPOSE  5000:5000

CMD python app.py
