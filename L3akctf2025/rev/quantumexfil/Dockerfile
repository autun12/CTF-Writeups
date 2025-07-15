FROM node:slim

RUN apt-get update && apt-get install -y \
    libjpeg-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY chal.js helper.node ./

RUN mkdir -p /work

ENTRYPOINT ["node", "chal.js"]