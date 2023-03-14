FROM python:3.11.2-alpine3.17@sha256:741e650697a506f0991ef88490320dee59f9e68de61734e034aee11d2f3baedf
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
