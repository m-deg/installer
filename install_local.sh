#!/bin/bash
# Steps on Windows::
# 1. Install WSL on Windows.
# 2. Install Debian 12 on WSL.
# 3. Enable systemd on Debian 12: https://learn.microsoft.com/en-us/windows/wsl/systemd
# 4. Obtain Github username and access token
# 5. Run this script inside debian 12 - within Windows WSL

read -p "Enter GIT username >" username
read -p "Enter GIT access token >" accesstoken
read -p "Enter your GIT fork repo name >" reponame
sudo apt update
sudo apt install git python3 curl pip -y
sudo pip3 install termcolor chardet pytz filelock --break-system-packages
sudo mkdir -p /datadrive/code
sudo chmod 777 /datadrive/code
cd /datadrive/code
git clone https://$username:$accesstoken@github.com/$username/$reponame.git .
python3 /datadrive/code/common/python/main_program_module.py --install local all

