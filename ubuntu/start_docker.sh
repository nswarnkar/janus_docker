#!/bin/bash 
. ./docker_name.sh
sudo docker run -itd -p 80:80 -p 7088:7088 -p 8088:8088 -p 8188:8188 $DOCKER_IMAGE_NAME
