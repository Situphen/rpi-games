#!/bin/bash
cd $(dirname "$0")

# Before install
SERVER_PORT="8303"
source ../_before-install.sh

# Install
sudo apt-get -y -qq install teeworlds-server

# After install
if [ ! -d /home/pi/.local/share/teeworlds/ ]
then
    mkdir /home/pi/.local/share/teeworlds/
fi

ln -s /home/pi/rpi-games/teeworlds/teeworlds-config-ctf.conf teeworlds-ctf.conf
mv teeworlds-ctf.conf /home/pi/.local/share/teeworlds/
ln -s /home/pi/rpi-games/teeworlds/teeworlds-config-dm.conf teeworlds-dm.conf
mv teeworlds-dm.conf /home/pi/.local/share/teeworlds/

sudo cp teeworlds-server.service /lib/systemd/system/
sudo systemctl enable teeworlds-server.service
sudo systemctl restart teeworlds-server.service
