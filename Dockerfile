## Image what i use
FROM python
# define working directory
WORKDIR /app-flask
# updating os
RUN apt upgrade && pip install --upgrade pip
# copy the contents
COPY . /app-flask
# run pip to install dep. flask app
RUN pip install -r requirements.txt

CMD ["python","flask-app.py"] 
