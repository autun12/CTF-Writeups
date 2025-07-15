FROM pwn.red/jail

RUN mkdir -p /srv/app
RUN mkdir -p /srv/tmp
COPY --chmod=755 cosmofile /srv/app/run
COPY --chmod=444 flag.txt /srv/app/flag.txt

ENV JAIL_TMP_SIZE=10K JAIL_MEM=1M JAIL_TIME=120
