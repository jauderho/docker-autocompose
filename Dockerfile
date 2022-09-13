FROM python:3.11.0rc2-alpine3.16@sha256:78a82d77371e2fe91765d4277581d0824b8fda4489deaafc82e0604f05db6f0f
LABEL org.opencontainers.image.source https://github.com/Red5d/docker-autocompose

WORKDIR /usr/src/app

COPY . .

RUN python ./setup.py install

ENTRYPOINT [ "python", "./autocompose.py" ]
