#!/bin/bash

# remove the pre-existing image
docker image rm opencv_tf

# remove any orphaned modules
docker system prune

# build the new image
docker build -t opencv_tf -f Dockerfile .