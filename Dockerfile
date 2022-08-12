FROM python:3.11.0rc1-alpine3.16@sha256:6adadc338fb861bd1a89beae3c51f91982dc585fcad35eed9410a907949857eb
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
