#!/bin/bash

docker build -t janus-node .
docker tag janus dc2.srvhub.tools/shb/janus-node
docker push dc2.srvhub.tools/shb/janus-node