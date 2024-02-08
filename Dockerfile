FROM python:3.12.2-alpine3.18@sha256:c9b14533a6a0016a4d2def5099bc420507f5a5cbcd783bf1ea0977eeeacd1339
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
