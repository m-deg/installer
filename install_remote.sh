#!/bin/bash

sudo apt update
sudo apt install git python3 curl pip -y
sudo pip3 install termcolor chardet pytz filelock --break-system-packages
cd /datadrive/code
sudo git pull
git config --global --add safe.directory /datadrive/code
python3 /datadrive/code/common/python/main_program_module.py --install remote all
