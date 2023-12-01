FROM python:3.12.0-alpine3.18@sha256:1d688a37293956d3e0658dfb54938082933cca848ec9105c1680b39d91b912a8
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
