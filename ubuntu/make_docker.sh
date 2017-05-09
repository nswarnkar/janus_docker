#!/bin/bash
. ./docker_name.sh
sudo docker build -t $DOCKER_IMAGE_NAME .
