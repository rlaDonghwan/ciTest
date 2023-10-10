FROM python:3.9

RUN apt-get update -y
RUN apt-get install -y vim

WORKDIR /app

COPY . /app

RUN pip3 install --no-cache-dir -r requirments.txt

EXPOSE 8000

CMD python3 manage.py runserver 0.0.0.0:8000