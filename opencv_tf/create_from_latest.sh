#!/bin/bash

# remove the pre-existing container
docker container rm opencv_tf

# remove any orphaned modules
docker system prune

# create a new container from image
docker container create --name=opencv_tf -t -i lehmansarahm/opencv_tf:latest

# start the container
docker container start -i opencv_tf