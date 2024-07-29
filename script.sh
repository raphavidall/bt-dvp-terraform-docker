#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install python3 -y
sudo apt-get install curl git zip -y
sudo apt-get install docker.io -y
sudo systemctl enable --now docker
sudo systemctl start docker

# Instalando o docker-compose
sudo mkdir -p ~/.docker/cli-plugins/
sudo curl -SL https://github.com/docker/compose/releases/download/v2.11.2/docker-compose-linux-x86_64 -o ~/.docker/cli-plugins/docker-compose
sudo chmod +x ~/.docker/cli-plugins/docker-compose
cd ~/.docker/cli-plugins/
mv docker-compose /usr/local/bin/
