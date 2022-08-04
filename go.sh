#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id

##################################################################################
##Change repo Debian to SID 
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list
cp berry.desktop /usr/share/xsessions
apt update && apt upgrade

chmod +x .xinitrc alacritty.sh berry.sh berry.desktop packages.sh polybar.sh resources.sh rofi.sh pkg/berry_0.1.11-1_amd64_bullseye.deb

echo "This script is about to run another script."
./packages.sh
echo "Your Packages installed."
./berry.sh
echo "BerryWm installed."
#./alacritty.sh
#echo "Alacritty installed."
#./polybar.sh
#echo "Polybar installed."
#./rofi.sh
#echo "Polybar installed."
./resources.sh
echo "Your resources installed."


##NOTE##
# i comment the rest script because not run normally. you can install manual.
# you can open and edit _resource.sh_ to use you own resource git.

