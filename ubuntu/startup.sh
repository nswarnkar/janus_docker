cd /opt/janus/share/janus/demos
nohup python -m SimpleHTTPServer 80 &
cd /opt/janus/bin
nohup ./janus --stun-server=stun.l.google.com:19302 &
exec /bin/bash

