FROM python:3.12.1-alpine3.18@sha256:fb759579d60cfe1f70b110a27be95aaa7cf758d2fa21cf54fffb71c2ba3f8034
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
