FROM python:3.10.3-alpine3.15@sha256:28ffe33b5dab0983068f5ec50631ff061329d9e1b9a649d8667fca5b1be913d7
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
