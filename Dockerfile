FROM python:3.12.0rc1-alpine3.18@sha256:7bcf495f17b862d028712ec09b68962c8fe3287cb3a9c2bc87cb5de80e26d27c
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
