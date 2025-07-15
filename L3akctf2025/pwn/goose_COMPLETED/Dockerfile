FROM pwn.red/jail
COPY --from=ubuntu / /srv
ENV JAIL_CPU=100 JAIL_MEM=20M JAIL_TIME=30 JAIL_CONNS_PER_IP=1
COPY chall /srv/app/run
RUN chmod +x /srv/app/run
COPY flag.txt /srv/
