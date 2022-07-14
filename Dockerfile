FROM python:3.11.0b4-alpine3.15@sha256:aa82a032d3f5476b9b63d4d8a1241aef218463cc6bfbe38f521df8bbfd4a0fd1
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
