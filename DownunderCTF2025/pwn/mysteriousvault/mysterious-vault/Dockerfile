FROM ghcr.io/downunderctf/docker-vendor/nsjail:ubuntu-24.04

ENV JAIL_CWD=/chal
COPY ./nsjail.cfg /home/ctf

COPY ./flag.txt /home/ctf/chal

COPY ./mysterious_vault /home/ctf/chal/pwn
COPY ./password_handler_3000 /home/ctf/chal
COPY ./password_handler_3001 /home/ctf/chal
COPY ./checker1-trusted-env/ /home/ctf/chal/checker1-trusted-env
COPY ./checker2-trusted-env/ /home/ctf/chal/checker2-trusted-env
