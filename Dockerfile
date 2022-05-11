FROM python:3.11.0b1-alpine3.15@sha256:a6c232d42de9cea47ef5d3d5ca00acef42f7dfb9bd86f3051dff1fa3bb8d3ca5
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
