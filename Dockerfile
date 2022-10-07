FROM python:3.11.0rc2-alpine3.16@sha256:51196d9248d05d65b4bcf8dd21d510cd5c7af7e908405640fe821dd4c1fdb09f
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
