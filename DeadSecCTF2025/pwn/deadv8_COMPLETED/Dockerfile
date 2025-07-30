FROM ubuntu:22.04@sha256:b6b83d3c331794420340093eb706a6f152d9c1fa51b262d9bf34594887c2c7ac

RUN apt update
RUN apt-get install -y socat unzip python-is-python3

RUN adduser pwn

COPY ./flag /flag

WORKDIR /home/pwn
USER pwn

COPY ./deploy/run.sh ./run.sh
COPY ./deploy/runner.py ./runner.py
COPY ./deploy/x64.release.zip ./x64.release.zip

RUN unzip ./x64.release.zip

USER root
RUN chmod 644 /flag 
RUN chmod 755 ./run.sh
RUN chmod 644 ./runner.py
RUN chmod 755 ./d8

USER pwn

EXPOSE 12234
CMD socat TCP-LISTEN:12234,reuseaddr,fork EXEC:./run.sh,stderr
