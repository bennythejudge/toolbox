#!/usr/bin/env bash

# run a local docker registry
# listening on port 5000
docker run \
        --detach \
        --name registry \
        --publish '5000:5000' \
        registry

