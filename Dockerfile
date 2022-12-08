FROM python:3.11.1-alpine3.16@sha256:2f38a42caad082055994e2cf15c6f4cf7c15b9d9b534ebd4132a2457f505e6fc
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
