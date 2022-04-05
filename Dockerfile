FROM python:3.10.4-alpine3.15@sha256:156bbd92afdd8a3a020937ba06585e299602bbc4ce9f62a1f4f20fa25a28a2d2
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
