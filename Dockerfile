FROM ubuntu:devel

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends software-properties-common gpg-agent \
 && add-apt-repository -y ppa:mythbuntu/32 \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    iputils-ping mythtv-backend libhdhomerun4 libmyth-python x11-utils \
 && rm -rf /var/lib/apt/lists/*

RUN ln -sfv /usr/share/zoneinfo/Australia/Sydney /etc/localtime

ENTRYPOINT ["mythbackend"]

