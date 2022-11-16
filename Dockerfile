FROM python:3.11.0-alpine3.16@sha256:08b03b140633664ed4a55630de38f847d19059318c2473a5bff592d8a0b051d5
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
