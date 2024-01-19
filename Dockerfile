FROM python:3.12.1-alpine3.18@sha256:28b825667534d432c2ec234b334de5f829624698adfa6a3fef38c4fe165922d0
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
