FROM python:3.11.0b1-alpine3.15@sha256:681d775f6284e58d873574bc934cc70710346fa9195ee8ffb3d5819fcbd57de7
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
