FROM python:3.10.4-alpine3.15@sha256:9316f0d151250a0b5a6c6bc26ed11f7e1cb29e856fa0da48fa9d084a3c67d46d
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
