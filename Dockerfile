FROM python:3.11.1-alpine3.16@sha256:67cdb02c06e0ab6fbb4927ad64abdc1dd4094c8fdb85edf4655b3720779fc2a5
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
