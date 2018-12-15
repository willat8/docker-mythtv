FROM ubuntu:bionic

RUN apt-get update \
 && apt-get install -y --no-install-recommends software-properties-common \
 && add-apt-repository -y ppa:mythbuntu/29 \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    locales iputils-ping mythtv-backend libhdhomerun4 \
 && rm -rf /var/lib/apt/lists/*

RUN locale-gen "en_AU.UTF-8" && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    ln -sfv /usr/share/zoneinfo/Australia/Sydney /etc/localtime

ENV LC_ALL=en_AU.UTF-8 \
    LANG=en_AU.UTF-8

ENTRYPOINT ["mythbackend"]

