FROM python:3.12.0rc2-alpine3.18@sha256:b92ffaf56e573fcf8fae71567b4e1570b422134d359dde47719f278b2acebb6a
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
