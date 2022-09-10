#!/bin/bash
#Authohr Yves bernadin, Email......, UID..........
# date september 10, 2022
# this script help people to install docker
echo "Step1"
echo "verify if ,is it any docker application in your server"
  sleep 4
  docker ps
if [ $? -eq 0 ]
  then
  echo " you have a version of docker , please remove it first"
sleep 3
fi
sudo yum remove docker  docker-client docker-client-latest docker-common  docker-latest docker-latest-logrotate  docker-engine
      sudo yum install -y yum-utils
      sleep 2
      sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo -y
      sleep 3
      sudo yum -y  install docker-ce docker-ce-cli containerd.io
      sleep 5
      sudo systemctl start docker
      sleep 6
      sudo systemctl enable docker
      sleep 5
      sudo systemctl status docker