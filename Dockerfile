FROM python:3.10.4-alpine3.15@sha256:084df6be71c601a47d97c07143c9c16a22d99d3113ec4252a15736aa2d1f5465
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
