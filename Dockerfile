FROM python:3.7.6-buster

RUN apt update

RUN pip3 install --upgrade pip

COPY requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

WORKDIR /app
ADD app.py /app/app.py

ENTRYPOINT ["python3", "app.py"]
