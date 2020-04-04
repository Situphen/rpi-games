#!/bin/bash
cd $(dirname "$0")

# Before install
SERVER_PORT="30000"
source ../_before-install.sh

# Install
sudo apt-get -y -qq install minetest-server

# After install
sudo ln -s /home/pi/rpi-games/minetest/minetest-config.conf minetest.conf
sudo mv minetest.conf /etc/minetest/

sudo systemctl restart minetest-server.service
