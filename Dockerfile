FROM python:3.10.4-alpine3.15@sha256:fdea1877b9b341639ce5fc436b8dddad77e0872570c6848695dbabf701b296be
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
