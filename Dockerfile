FROM python:3-alpine@sha256:4eff19dfce481c125674c902b24aa6667b9bc166f6bbcae79a171ce2e6c64ee1
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
