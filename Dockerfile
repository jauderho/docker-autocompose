FROM python:3.10.3-alpine3.15@sha256:cef1da7133de6dbde6c0e253dcd5b2b3085ed3d9c49392f76c07a973df3fa0f7
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
