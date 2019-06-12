FROM ubuntu:18.04
LABEL maintainer="monitoring@nethinks.com"

RUN apt update \
    # base tools for CircleCI
    && apt install -y git ca-certificates \
    # make
    && apt install -y make \
    # Python3
    && apt install -y python3 python3-pip \
    # Angular
    && apt install -y npm \
    && npm install -g angular-cli \
    # clear cache
    && rm -rf /var/lib/apt/lists/*
