FROM ubuntu:18.04
LABEL maintainer="monitoring@nethinks.com"

RUN apt update \
    # base tools for CircleCI
    && apt install -y git ca-certificates \
    # make
    && apt install -y make \
    # sshpass for deployment
    && apt install -y sshpass \
    # Python3
    && apt install -y python3 python3-pip \
    && ln -s /usr/bin/pip3 /usr/bin/pip \
    # npm
    && apt install -y npm \
    # clear cache
    && rm -rf /var/lib/apt/lists/*
