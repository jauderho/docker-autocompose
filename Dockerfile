FROM python:3.11.0b4-alpine3.15@sha256:70825f4d36b31382c5b06e5c0d37de0c0bde49a42f26e77e6b3479d37662eb95
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
