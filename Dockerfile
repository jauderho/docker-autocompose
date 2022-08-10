FROM python:3.11.0b5-alpine3.16@sha256:02abc06f9fc8f5707500e2d720fda5334dc6e61ada3b7c04624b66599c0b1b39
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
