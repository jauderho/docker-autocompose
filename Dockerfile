FROM python:3.12.0b3-alpine3.17@sha256:254b6af4367ca4816b4d7810835eb73a687832bbcd365f7f0ab1545967ca5cfe
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
