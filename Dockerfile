FROM python:3.11.1-alpine3.16@sha256:f3190bed1ce4f734aeea30761f26da3084a196e3210ee37123e0da367a1dfc41
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
