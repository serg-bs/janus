#!/bin/bash

docker build -t janus .
docker tag janus dc2.srvhub.tools/shb/janus
docker push dc2.srvhub.tools/shb/janus