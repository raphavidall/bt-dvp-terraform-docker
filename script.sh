#!/bin/bash

sudo apt-get update
sudo apt-get install python3 -y
sudo apt-get install curl git zip -y
sudo apt-get install docker.io -y
sudo systemctl enable --now docker

cd /home/ubuntu  # Ou outra pasta com permissões de escrita
git clone https://github.com/raphavidall/bt-dvp-terraform-docker.git
