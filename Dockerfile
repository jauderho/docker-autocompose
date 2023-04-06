FROM python:3.11.3-alpine3.17@sha256:b44b270eea37d9319b06d68a87664ad7adc3680674a925d58fd1b96267787676
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
