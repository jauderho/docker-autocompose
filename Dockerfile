FROM python:3.12.0b2-alpine3.17@sha256:dd2a28075c0f32710484d62779ff31f35f9236414a3fa67a41d7fd9f33681acd
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
