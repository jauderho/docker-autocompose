FROM python:3.11.0b3-alpine3.15@sha256:c41e99f7dae78b30d46fe9d5934b8d843f3f143eaa7f608ee6ff4ec6ff557120
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
