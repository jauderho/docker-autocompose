FROM python:3.11.3-alpine3.17@sha256:507818d46649f8543e58d19a00e3a1a428bb7e87c0bf7f7d1ffe7b076cda11be
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
