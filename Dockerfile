FROM python:3.11.0b5-alpine3.16@sha256:782424d03ec00b1355184e3b0013aa815ef7603e639f5ef9e50db0c2771cb52a
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
