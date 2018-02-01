FROM spreadspace/flumotion:base
MAINTAINER Christian Pointner <equinox@spreadspace.org>

USER root

RUN adduser --home /srv --no-create-home --system --uid 1000 --group admin

USER admin

ENV FLUMOTION_COMMAND admin
