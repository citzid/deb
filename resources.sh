#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id

username=$(id -u -n 1000)
builddir=$(pwd)
apt update

##################################################################################
## Clone my resources file (if you have own resources, you can edit this) ##
git clone https://github.com/citzid/bg
git clone https://github.com/citzid/fonts
git clone https://github.com/citzid/icons
git clone https://github.com/citzid/grubthemes
##################################################################################
## Copy resources file
cd $builddir
#Create folders in user directory (eg. Documents,Downloads,etc.)#
mkdir -p home/$username/Documents 
mkdir -p home/$username/Downloads/ 
mkdir -p home/$username/Music 
mkdir -p home/$username/Pictures 
mkdir -p home/$username/Videos 
mkdir -p home/$username/.resources
mkdir -p home/$username/.resources/bg
mkdir -p home/$username/.resources/fonts
mkdir -p home/$username/.resources/icons
mkdir -p home/$username/.resources/grubthemes

cp -R bg/* /home/$username/.resources/bg
cp -R font/* /home/$username/.resources/fonts
cp -R icon/* /home/$username/.resources/icons
cp -R grubthemes/* /home/$username/grubthemes

chown -R $username:$username /home/$username
xdg-user-dirs-update