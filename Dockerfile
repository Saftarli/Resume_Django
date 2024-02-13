ROM Python:3.13-slim

RUN apt update

RUN apt install python3-dev build-essential -y

RUN pip install --upgrade pip
RUN pip install virtualenv && python -m virtualenv /opt/venv

ADD ./requirements.txt /tmp/requirements.txt