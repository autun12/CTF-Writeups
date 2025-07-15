FROM python@sha256:f2fdaec50160418e0c2867ba3e254755edd067171725886d5d303fd7057bbf81 AS app

RUN mkdir -p /challenge
WORKDIR /challenge
COPY wrapper.py .
COPY chall .
COPY flag.txt .

FROM pwn.red/jail

COPY --from=app / /srv
RUN mkdir -p /srv/app
COPY --chmod=555 ./run /srv/app/run

ENV JAIL_PIDS=10 JAIL_MEM=15M JAIL_TIME=120