#! /bin/bash

if [ "$1" = 'shb' ]; then
    node server.js
fi

exec "$@"
