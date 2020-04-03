#!/bin/bash
cd $(dirname "$0")

# Before install
SERVER_PORT="8035"
source ../_before-install.sh

# Install
sudo apt-get -y -qq install liquidwar-server

# After install
sudo cp liquidwar-server.service /lib/systemd/system/
sudo systemctl enable liquidwar-server.service
sudo systemctl restart liquidwar-server.service
