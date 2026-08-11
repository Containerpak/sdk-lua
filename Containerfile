FROM ghcr.io/containerpak/base-sdk:main

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends liblua5.4-dev lua5.4 && \
    apt-get clean && \
    find /var/lib/apt/lists -mindepth 1 -delete
