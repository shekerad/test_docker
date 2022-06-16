FROM python:latest

WORKDIR /opt

ADD requirements.txt /opt
RUN pip3 install -r /opt/requirements.txt

ADD hello.py /opt
ENV FLASK_APP=hello
ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]



#RUN apt update
#RUN apt install python3 python3-pip -y   c 