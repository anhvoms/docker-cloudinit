# Pull base image.
FROM ubuntu:16.04

# Install.
RUN \
  apt-get update && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget sudo && \
  apt-get install -y devscripts && \
  apt-get install -y  python3-configobj python3-oauthlib python3-jsonpatch python3-jinja2 python3-jsonschema debhelper dh-systemd python3-contextlib2 python3-nose python3-setuptools python3-coverage python3-httpretty python3-unittest2 python3-mock python3-yaml python3-requests

#RUN useradd -ms /bin/bash dockeruser

#USER dockeruser
#WORKDIR /home/dockeruser

# Define default command.
CMD ["bash"]
