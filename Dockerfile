FROM python:3.11.2-alpine3.17@sha256:506eed442161ee54460830b5a4c282f84a97046d0222c917d62bcf069446c26a
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
