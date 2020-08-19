#!/bin/bash

# The Jetson Nano has 4 GB of RAM, 
# which might not be enough for big jobs, 
# so add a swap file the SD card. 
sudo swapon --show
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
