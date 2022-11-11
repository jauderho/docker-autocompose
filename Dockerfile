FROM python:3.11.0-alpine3.16@sha256:8badad0cd582053ff139be25a021b63af112229a6c38770239c555da57f0c924
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
