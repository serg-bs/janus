#!/bin/bash

docker build -t janus .
docker tag janus sergbs/janus
docker push sergbs/janus