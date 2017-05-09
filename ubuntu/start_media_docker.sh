if [ $# -ne 2 ]
then
        echo "Syntax:\$program stun_ip stun_port "
            exit
        fi
PSTART=7880
PEND=8200
PSTART1=5000
PEND1=5010
STUN_SERVER=$1
STUN_PORT=$2
OUTPUT="`sudo docker run \
    -p $PSTART-$PEND:$PSTART-$PEND/udp -p $PSTART-$PEND:$PSTART-$PEND/tcp \
    -p $PSTART1-$PEND1:$PSTART1-$PEND1/udp -p $PSTART1-$PEND1:$PSTART1-$PEND1/tcp \
    -itd -e DOCKER_NAME='webrtc_janus' \
     -e STUN_SERVER=$STUN_SERVER \
     -e STUN_PORT=$STUN_PORT \
        fs_media_janus_ubuntu`"
#     -e PORT_END=$PEND \
#     -e INT_REST_PORT=$PEND \
INST="`echo $OUTPUT  | cut -c1-12`"
echo "Instance Id is $INST"
