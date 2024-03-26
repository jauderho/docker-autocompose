FROM python:3.12.2-alpine3.18@sha256:3a8e2cf5d2d128b6f14a7e73fdeff30109ace32a67d39ba477ef181f89d1fc57
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
