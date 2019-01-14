#!/bin/bash

# remove the old version docker
yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \ 
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-selinux \
                  docker-engine-selinux \
                  docker-engine

# install the depence tools
yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2

# add the docker-ce repo
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# install the custom docker-ce version	
yum install -y docker-ce-18.06.1.ce

# start docker and enable the docker service on boot
systemctl start docker

systemctl enable docker
