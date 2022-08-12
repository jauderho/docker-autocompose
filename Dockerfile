FROM python:3.11.0b5-alpine3.16@sha256:a9657bec744fc50776046dabdcb07ff08be6504a93b74bf8a64f27bf119bc05c
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
