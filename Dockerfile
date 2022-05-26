FROM python:3.11.0b1-alpine3.15@sha256:37b868b2085561ba160eca54bf929c9d55124035274b783d842a00343d0b5935
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
