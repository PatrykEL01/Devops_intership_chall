## Image what i use
FROM python:3.6.1-alpine
# define working directory
WORKDIR /app-flask
# updating os
RUN apk upgrade --available && pip install --upgrade pip
# copy the contents
COPY . /app-flask
# run pip to install dep. flask app
RUN pip install -r requirements.txt

CMD ["python","flask-app.py"] 
