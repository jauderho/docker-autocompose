FROM python:3.10.4-alpine3.15@sha256:95aa298d66d2e9ec5cce889a3163a3fcbdf08565ea9fe24a7982426d10f1a88c
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
