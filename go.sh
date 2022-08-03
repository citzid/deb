#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id

##################################################################################
##Change repo Debian to SID 
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list
cp berry.desktop /usr/share/xsessions
apt update

chmod +x alacritty.sh berry.sh berry.desktop packages.sh polybar.sh resources.sh .xinitrc pkg/berry_0.1.11-1_amd64_bullseye.deb

echo "This script is about to run another script."
./berry.sh &
echo "BerryWm installed."
./alacritty.sh &
echo "Alacritty installed."
./polybar.sh &
echo "Polybar installed."
./packages.sh &
echo "Your Packages installed."
./resources.sh &
echo "Your resources installed."

##NOTE##
#uncomment the rest script after BERRYWM run normally. And comment berrysh

