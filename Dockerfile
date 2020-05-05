FROM ubuntu

MAINTAINER Hiroaki Sano <hiroaki.sano.9stories@gmail.com>

RUN apt-get update -y && apt-get install git python python3-pip -y

COPY . /opt/project

WORKDIR /opt/project

RUN pip3 install -r requirements.txt

EXPOSE 8888

CMD ["python3", "app.py"]
