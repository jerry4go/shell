#!/bin/bash

systemctl stop firewalld.service && systemctl disable firewalld.service

yum install -y wget lrzsz net-tools vim epel-release bash-completion

yum update -y

setenforce 0 && sed -i 's/SELINUX=enforcing/SELINUX=disabled/' /etc/selinux/config

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime



