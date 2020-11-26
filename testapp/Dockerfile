FROM ubuntu:20.04

ENV PYTHONUNBUFFERED=1

RUN apt-get update -y && apt-get install -y python3-pip python-dev

RUN mkdir /code
WORKDIR /code
COPY . /code/

RUN pip3 install -r requirements.txt