FROM python:3.12.2-alpine3.18@sha256:b7a2a34021c40b197c129712a86c03fc7933e470e20fa0f1ab6509926fcc6054
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
