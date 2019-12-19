#! /bin/bash

if [ "$1" = 'shb' ]; then
    ./opt/janus/bin/janus
fi

exec "$@"
