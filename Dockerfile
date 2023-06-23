FROM python:3.12.0b2-alpine3.18@sha256:3422f0e79921b73a01e6c6a38aa55d27dd24c6acbb80a1e2c2e314ca4cc40598
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
