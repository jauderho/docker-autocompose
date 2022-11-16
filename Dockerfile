FROM python:3.11.0-alpine3.16@sha256:ec7ff85cfca09fc0d9b4bae53f0d0f2ee164c844ba509e641917432d82e9dae3
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
