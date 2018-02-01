#!/bin/bash

CMD=${FLUMOTION_COMMAND}
if [ -z "$CMD" ]; then
  exec /bin/bash
fi

exec /usr/bin/flumotion-$CMD $@
