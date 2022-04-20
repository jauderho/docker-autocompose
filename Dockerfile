FROM python:3.10.4-alpine3.15@sha256:21c71a37aaa8b4bec1d07f373c7f32322d935accfeeb0b0860be1df6b194ecb5
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
