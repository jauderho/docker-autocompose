FROM python:3.11.1-alpine3.16@sha256:093bfc93121f76923bc68086452b807b3b26d3a663a3341a78be6b63282a4fd3
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
