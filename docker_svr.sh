#!/bin/bash

#update and upgrade the server OS
sudo apt update -y && sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt install curl -y
sudo apt install vim -y
sudo apt install git -y

#install docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install docker-ce -y

#add user to docker group
sudo usermod -aG docker fikradev

#install docker-compose
 sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

  sudo chmod +x /usr/local/bin/docker-compose

 sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

docker-compose --version

#Create requisite directories and files
mkdir dockerfile_dir
cd dockerfile_dir
touch Dockerfile
cd ~

mkdir postgres_dir
cd postgres_dir
touch docker-compose.yml
cd ~

mkdir mysql_dir
cd mysql_dir
touch docker-compose.yml
cd ~

sudo apt update

echo "Docker Server Setup Complete!"









