# docker-autocompose container image.
#
# Build:
#   docker build -t docker-autocompose .
#
# Run (the docker socket is required to inspect containers):
#   docker run --rm -v /var/run/docker.sock:/var/run/docker.sock \
#     docker-autocompose <container-name-or-id>...
#
# Build arguments:
#   UV_VERSION  Version of uv used to install dependencies (default: 0.12.7).
#
# Dependencies are installed from uv.lock with --locked, so the runtime image
# is reproducible. Base images are pinned by digest.

FROM python:3.16.0a1-alpine@sha256:57d59f9badcd47eabb3ed920d3bd5ae02f44664fc224ae57f1687980227741d2 AS builder

ARG UV_VERSION=0.12.7

ENV UV_COMPILE_BYTECODE=1 \
    UV_LINK_MODE=copy \
    UV_NO_CACHE=1 \
    UV_PYTHON_DOWNLOADS=never

RUN pip install --no-cache-dir --only-binary=:all: "uv==${UV_VERSION}"

WORKDIR /app

COPY pyproject.toml uv.lock README.md LICENSE ./
COPY src ./src

RUN uv sync --locked --no-dev --no-editable

FROM python:3.16.0a1-alpine@sha256:57d59f9badcd47eabb3ed920d3bd5ae02f44664fc224ae57f1687980227741d2

LABEL org.opencontainers.image.source=https://github.com/Red5d/docker-autocompose

COPY --from=builder /app/.venv /app/.venv

ENV PATH="/app/.venv/bin:${PATH}"

ENTRYPOINT [ "autocompose" ]
