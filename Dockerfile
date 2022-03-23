FROM python:3.10.3-alpine3.15@sha256:29384328d01095e156318e21a6f9233bd8ee2003b184590d92c1b75260aa0b65
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
