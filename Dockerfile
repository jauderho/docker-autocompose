FROM python:3.12.0b3-alpine3.18@sha256:2f5334e7b799d66e770cd4e08aed2c51d1f778208fd8458846e9f6a6d88afa6c
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
