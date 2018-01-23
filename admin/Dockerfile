FROM spreadspace/flumotion:latest
MAINTAINER Christian Pointner <equinox@spreadspace.org>

USER root

RUN adduser --home /home/user --uid 1000 --disabled-password --gecos "interactive user" user

USER user
CMD ["admin"]
