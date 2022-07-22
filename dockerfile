FROM python:3.9


ENV PYTHONUNBUFFERED 1

RUN mkdir /app

WORKDIR /app

ADD . /app/

EXPOSE 8080

RUN pip install -r requirements.txt
