#!/usr/bin/env bash

# pull an image from docker registry
docker pull busybox

# tag the image to the local registry
docker tag busybox localhost:5000/test

# push the image to the local registry
docker push localhost:5000/test

# expect the image to be pushed to the local registry
