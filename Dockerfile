# syntax = docker/dockerfile:1.3-labs
FROM ubuntu:devel

RUN --security=insecure apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends software-properties-common gpg-agent \
 && add-apt-repository -y ppa:mythbuntu/32 \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    locales iputils-ping mythtv-backend libhdhomerun4 libmyth-python x11-utils \
 && rm -rf /var/lib/apt/lists/*

RUN --security=insecure locale-gen "en_GB.UTF-8" && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    ln -sfv /usr/share/zoneinfo/Australia/Sydney /etc/localtime

ENV LC_ALL=en_GB.UTF-8 \
    LANG=en_GB.UTF-8

ENTRYPOINT ["mythbackend"]

