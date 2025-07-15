FROM node:20-bullseye-slim AS app

RUN useradd -m ctfuser \
 && chown root:root /home/ctfuser \
 && chmod 755 /home/ctfuser

WORKDIR /home/ctfuser/app

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/silentmatt/expr-eval.git expr-eval \
 && cd expr-eval \
 && git checkout 6e889e0e75c50ac37d70c35388602025650e0c50

COPY --chown=root:root chal.js .
COPY --chown=root:root convert.js .

RUN node convert.js

RUN rm convert.js

RUN random_flag=$(head /dev/urandom | tr -dc 'a-zA-Z0-9' | head -c 32) && \
  echo "L3AK{FAKE_FLAG}" > /home/ctfuser/app/flag_${random_flag} && \
  chmod 444 /home/ctfuser/app/flag_${random_flag}

RUN chmod -R 555 /home/ctfuser/

FROM pwn.red/jail

COPY --from=app / /srv

COPY --chmod=555 run /srv/app/run

# Jail limits
ENV JAIL_PIDS=40
ENV JAIL_MEM=100M
ENV JAIL_TIME=120
