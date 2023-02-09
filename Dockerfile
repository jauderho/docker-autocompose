FROM python:3.11.2-alpine3.16@sha256:aa7a40cb28a0fd274afd62cd8ff8875db5900ccbc9753f4449633dcad6823e05
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
