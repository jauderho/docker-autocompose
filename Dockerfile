FROM python:3.11.0rc2-alpine3.16@sha256:0ac8cec8bfd1d862a47c1a99507cb9a2023a24d4b281e386cb9d9562e485b681
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
