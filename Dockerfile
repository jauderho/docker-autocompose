FROM python:3.11.0b5-alpine3.16@sha256:55cbdbb0ff7417f8271518bf49c789d28032f91f4338389ed3762f732b90a1a6
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
