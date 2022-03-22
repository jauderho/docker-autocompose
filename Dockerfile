FROM python:3.10.3-alpine3.15@sha256:7099d74f22c2d7a597875c3084e840846ca294ad01da1e845b0154100a6ac15b
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
