FROM python:3.12.1-alpine3.18@sha256:af0d8da43677e3000ebdf4045508d891a87e7bd2d3ec87bc6e40403be97291b8
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
