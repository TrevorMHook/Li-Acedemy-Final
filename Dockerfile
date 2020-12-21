FROM python:3.9.1
WORKDIR /usr/src/app/
COPY requirements.txt /usr/src/app/
RUN pip install -r requirements.txt