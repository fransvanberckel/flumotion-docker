FROM debian:wheezy
MAINTAINER Christian Pointner <equinox@spreadspace.org>

COPY spreadspace-build.asc /root
RUN set -x \
    && echo 'deb http://build.spreadspace.org/ wheezy main' >> /etc/apt/sources.list \
    && echo 'APT::Install-Recommends "false";' >  /etc/apt/apt.conf.d/02no-recommends \
    && echo 'APT::Install-Suggests "false";' >> /etc/apt/apt.conf.d/02no-recommends \
    && apt-key add /root/spreadspace-build.asc \
    && apt-get update -q \
    && apt-get install -y -q tzdata flumotion flumotion-decklink \
    && apt-get upgrade -y -q \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
