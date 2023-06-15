FROM python:3.12.0b2-alpine3.17@sha256:1dcb2374e49a6ec0ba3e8a135701c89c198af0abd94f486017470f4b562b2b6c
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
