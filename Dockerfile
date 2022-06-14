FROM ubuntu:20.04

RUN apt update
RUN apt install python3 python3-pip -y

COPY requirements.txt /opt
COPY hello.py /opt

RUN pip3 install -r /opt/requirements.txt

ENV FLASK_APP=hello

WORKDIR /opt

CMD ["flask", "run", "--host=0.0.0.0"]
