FROM ubuntu:16.04
MAINTAINER Efa-GmbH <team@efa-gmbh.com>

# Copy installation scripts in
COPY *.sh ./

# Prepare the system
RUN ./install_depends.sh

# Install libsrtp 2.0.0
RUN ./libsrtp.sh

# Install usrsctp for data channel support
RUN ./usrsctp.sh

# Install websocket dependencies
RUN ./websockets.sh

# Compile & install Janus
RUN ./install_janus.sh

# Put configs in place
COPY conf/*.cfg /opt/janus/etc/janus/

# Declare the ports we use
EXPOSE 80 7088 8088 8188

# Define the default start-up command
CMD ./startup.sh
