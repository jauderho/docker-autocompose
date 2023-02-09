FROM python:3.11.2-alpine3.17@sha256:deb0f6327a7c0314470c76b3f92dca287b7aa138baabbd0259e2b6690e6b2dd6
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
