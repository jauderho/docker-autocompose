FROM python:3.11.0b4-alpine3.15@sha256:42b01e52e70a860252ba4ae37faa61a1414033372e9527bd1ed61057498ba6de
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
