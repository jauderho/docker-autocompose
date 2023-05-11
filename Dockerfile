FROM python:3.11.3-alpine3.17@sha256:721023564970262d6ac79d30e2a2399d32555220e4f37bfe2c3a687b4f9721d9
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
