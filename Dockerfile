FROM python:3.12.0rc3-alpine3.18@sha256:f68646d4ca421128a4f9b24a8bc39338ae574019fa5e845d5d8c57ecb143145f
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
