Docker version for Janus WebRTC
===============================

For Ubuntu Version, 
To create docker image:
$ cd ubuntu
$ sh make_docker.sh

Once created, you can start docker as:
$ sh start_docker.sh


It uses SimpleHTTPServer python module to run HTTP Server for Janus Demos to run.
HTTP Server is by default runnning on 80.
In case, you want to change default port, please feel free to change in provided
docker scripts.

Thanks,
Neeraj Swarnkar
(Gmail Id : nswarnkar@gmail.com ) 
(Linkedin: www.linkedin.com/in/neerajswarnkar-2k )

