FROM python:3.11.0b4-alpine3.16@sha256:1a6cd028ea532db4d9d49de115e16cd2eb7e961c3812d4bae3dac173f694cf5a
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
