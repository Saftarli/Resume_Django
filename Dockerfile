FROM python:3.10-slim

RUN apt update

RUN apt install python3-dev build-essential -y


ENV PYTHONDONTWRITECODE 1
ENV VIRTUAL_ENV=/OPT/VENV

RUN pip install --upgrade pip
RUN pip install virtualenv && python -m virtualenv $VIRTUAL_ENV

ENV PATH="$VIRTUAL_ENV/bin:$PATH"

ADD ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

COPY . /srv/app
WORKDIR /srv/app



