#!/bin/bash

read -p "Enter GIT username >" username
read -p "Enter GIT access token >" accesstoken
sudo apt update
sudo apt install git python3 curl pip -y
sudo pip3 install termcolor chardet pytz filelock --break-system-packages
sudo mkdir -p /datadrive/code
sudo chmod 777 /datadrive/code
cd /datadrive/code
git clone https://$username:$accesstoken@github.com/degorg/main.git .
python3 /datadrive/code/common/python/main_program_module.py --install local all

