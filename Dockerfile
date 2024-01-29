FROM python:3.12.1-alpine3.18@sha256:bcffdd35b550a1869f0211d1aa681f3b494c029213f3fb16f365166534c6baac
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
