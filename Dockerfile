FROM python:3.12.0b4-alpine3.18@sha256:bcfd857481750417957f8510904e06301c6e27b3f0d6e27948e1398913627ee9
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
