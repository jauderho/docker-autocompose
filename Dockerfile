FROM python:3.12.0b4-alpine3.18@sha256:19626454e7bd077825357a13c88055c81efb18e1b5a3ff968c2f601de400a98c
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
