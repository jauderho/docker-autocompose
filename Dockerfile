FROM python:3.12.3-alpine3.18@sha256:24680ddf8422899b24756d62b31eb5de782fbb42e9c2bb1c70f1f55fcf891721
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
