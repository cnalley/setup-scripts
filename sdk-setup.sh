#!/bin/sh
# [WIP] Install kubos sdk for Ubuntu 16.04 #
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates -y
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo sh -c "echo 'deb https://apt.dockerproject.org/repo ubuntu-xenial main' >> /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get install linux-image-extra-$(uname -r) linux-image-extra-virtual -y
sudo apt-get install docker-engine -y --allow-unauthenticated
sudo apt-get install python-pip -y
sudo apt-get install build-essential libxml2-dev libxslt1-dev zlib1g-dev -y  
sudo wget python-dev PySocks-dev libffi-dev libssl-dev python-setuptools libjim-dev libdw-dev 
sudo pip install kubos-sdk
sudo groupadd docker
sudo usermod -aG docker $USER
sudo kubos update
#sudo killall -u $USER
