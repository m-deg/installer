#!/bin/bash

read -p "Enter GIT access token >" accesstoken
sudo apt update
sudo apt install git python3 pip -y
sudo pip3 install termcolor chardet pytz --break-system-packages
cd /datadrive/code
sudo git pull
git config --global --add safe.directory /datadrive/code
python3 /datadrive/code/common/python/main_program_module.py --install remote all
