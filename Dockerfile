FROM python:3.10.4-alpine3.15@sha256:318c53a8d5c0f56228f7c03a9b5108166cde24131d32ebe6e591ad08d0244ab7
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
