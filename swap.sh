#!/usr/bin/env bash

cd /
sudo dd if=/dev/zero of=swapfile bs=1M count=32000

#To set it as 1GB, change the count value (3000 in the example above) to 1000, 1500 for 1.5GB etc.
#Now change the file created to a swap file with the command below.
sudo mkswap swapfile

#Turn on the swap file with the command,
sudo swapon swapfile

#To ensure that the swap file is turned on automatically at system startup, open fstab.
#sudo nano etc/fstab
#And add the line given below. Save and close.

sudo echo "/swapfile none swap sw 0 0" >> /etc/fstab

#That is it. You can check if the system is using the swap file you created with the command
cat /proc/meminfo
