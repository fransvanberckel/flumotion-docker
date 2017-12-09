#!/bin/bash

CMD="$1"
shift

if [ -z "$CMD" ]; then
  exec /bin/bash
fi

exec /usr/bin/flumotion-$CMD $@
