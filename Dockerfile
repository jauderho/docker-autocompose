FROM python:3.11.2-alpine3.17@sha256:4b4078a3ab81edc2f5725cd42b065beaeeb4f9be3b4b1e3b4cf11dd6ae9720d3
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
