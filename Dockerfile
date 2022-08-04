FROM python:3.11.0b5-alpine3.16@sha256:f73caeb0970af18d51e1a5604c7cfae80c9067f9de377108f07a69182ef54468
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
