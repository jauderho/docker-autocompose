FROM python:3.10.4-alpine3.15@sha256:b9c3acf9463696075eb8757d7fed88ed02d2a4e566f6e4e6e15cbde35fe807fe
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
