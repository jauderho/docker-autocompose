FROM python:3.11.1-alpine3.16@sha256:d38982aa8ea1b37b9f6da14db4796f1a74170ccd6cb3a6f709d43f765ce7a31a
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
