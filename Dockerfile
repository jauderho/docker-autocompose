FROM python:3.11.2-alpine3.17@sha256:8af856dc9d9f8c6721f80ae6ca5e31184899f593bb77888c0b8da4772c1ec12f
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
