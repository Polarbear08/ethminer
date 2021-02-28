#!/bin/bash

set -x

sudo apt-get -y update
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
sudo apt-get -y update
sudo apt-get install -y docker-ce
sudo docker version
sudo usermod -aG docker $USER

sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get -y update
sudo apt-get -y install ubuntu-drivers-common
sudo apt-get -y install nvidia-driver-460-server