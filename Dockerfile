FROM ubuntu:jammy

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends software-properties-common gpg-agent \
 && add-apt-repository -y ppa:mythbuntu/32 \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    locales iputils-ping mythtv-backend libhdhomerun4 libmyth-python x11-utils tzdata \
 && rm -rf /var/lib/apt/lists/*

RUN locale-gen "en_AU.UTF-8" \
 && ln -sfv /usr/share/zoneinfo/Australia/Sydney /etc/localtime

ENV LC_ALL=en_AU.UTF-8 \
    LANG=en_AU.UTF-8

ENTRYPOINT ["mythbackend"]

