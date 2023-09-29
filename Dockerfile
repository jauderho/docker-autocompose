FROM python:3.12.0rc3-alpine3.18@sha256:a56fbc43abf1d3cd4d512abaa798f6fc7fed0a4ddf1ce92136e1ac96ccc2b163
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
