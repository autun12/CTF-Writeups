FROM ubuntu@sha256:b59d21599a2b151e23eea5f6602f4af4d7d31c4e236d22bf0b62b86d2e386b8f AS app

RUN mkdir -p /challenge
WORKDIR /challenge
COPY chall .
COPY flag.txt .

FROM pwn.red/jail

COPY --from=app / /srv
RUN mkdir -p /srv/app
COPY --chmod=555 ./run /srv/app/run

ENV JAIL_PIDS=10 JAIL_MEM=2M JAIL_TIME=120