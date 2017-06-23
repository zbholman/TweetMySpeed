#!/bin/bash
#
# Setup for tweet tool

sudo apt-get update
sudo apt-get install speedtest-cli
sudo easy_install twitter
sudo cp ./S99test_speeds.sh /etc/init.d/.
sudo update-rc.d S99test_speeds.sh defaults 99
