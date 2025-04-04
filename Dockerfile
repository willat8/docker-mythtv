ARG dist=oracular
ARG packages="locales iputils-ping mythtv-backend libhdhomerun5 libmyth-python tzdata"

FROM ubuntu:${dist} as packagecache

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends software-properties-common gpg-agent \
 && add-apt-repository -y ppa:willat8/mythtv \
 && apt-get install -y --no-install-recommends --download-only ${packages} \
 && echo 'Acquire::https {\n        CaInfo "/ca-certificates.crt";\n}' > /etc/apt/apt.conf.d/customcacertificates

FROM ubuntu:${dist}

ARG packages

RUN --mount=from=packagecache,src=/var/lib/apt,dst=/var/lib/apt,rw \
    --mount=from=packagecache,src=/var/cache/apt,dst=/var/cache/apt,rw \
    --mount=from=packagecache,src=/etc/apt,dst=/etc/apt \
    --mount=from=packagecache,src=/etc/ssl/certs/ca-certificates.crt,dst=/ca-certificates.crt \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends ${packages} \
 && dpkg -P --force-depends systemd systemd-sysv libpam-systemd cron-daemon-common cron dbus-bin dbus-daemon dbus-session-bus-common dbus-system-bus-common dbus-user-session dbus \
 && dpkg -P --force-depends zenity zenity-common xterm ubuntu-mono dconf-gsettings-backend dconf-service \
 && dpkg -P --force-depends adwaita-icon-theme gtk-update-icon-cache hicolor-icon-theme humanity-icon-theme \
 && dpkg -P --force-depends fonts-dejavu-core fonts-dejavu-extra fonts-dejavu-mono fonts-dejavu fonts-droid-fallback fonts-liberation fonts-texgyre fonts-tlwg-purisa-ttf fonts-tlwg-purisa \
 && dpkg -P --force-depends default-mysql-client mysql-client-8.0 mysql-client-core-8.0 xbitmaps usbutils

RUN locale-gen "en_AU.UTF-8" \
 && ln -sfv /usr/share/zoneinfo/Australia/Sydney /etc/localtime

ENV LC_ALL=en_AU.UTF-8 \
    LANG=en_AU.UTF-8

ENTRYPOINT ["mythbackend"]

