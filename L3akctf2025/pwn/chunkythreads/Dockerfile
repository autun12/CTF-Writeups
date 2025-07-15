FROM ubuntu@sha256:b59d21599a2b151e23eea5f6602f4af4d7d31c4e236d22bf0b62b86d2e386b8f AS app

FROM pwn.red/jail
COPY --from=app / /srv

ENV JAIL_CPU=100 JAIL_MEM=20M JAIL_TIME=60 JAIL_CONNS_PER_IP=1 JAIL_PIDS=8

RUN mkdir -p /srv/app
COPY --chmod=555 ./chall /srv/app/
COPY --chmod=555 ./wrapper.sh /srv/app/run

COPY flag.txt /srv/
