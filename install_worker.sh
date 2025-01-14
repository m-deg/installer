#!/bin/bash

read -p "Enter GIT access token >" accesstoken
sudo apt update
sudo apt install git python3 pip -y
sudo pip3 install termcolor chardet pytz --break-system-packages
sudo mkdir -p /datadrive/code
sudo chmod 777 /datadrive/code
cd /datadrive/code
git clone https://m-deg:$accesstoken@github.com/m-deg/projects.git .
python3 /datadrive/code/common/python/main_program_module.py --install worker all

