FROM python:3.11.2-alpine3.17@sha256:84630610c68e7c97384bc6e10f5490ab7b8398c30cdfffefa139ae20c3407cda
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
