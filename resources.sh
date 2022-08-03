#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id

username=$(id -u -n 1000)
builddir=$(pwd)
apt update

##################################################################################
## Clone my resources file (if you have own resources, you can edit this) ##
git clone https://github.com/citzid/bg.git
git clone https://github.com/citzid/fonts.git
git clone https://github.com/citzid/icons.git
git clone https://github.com/citzid/grubthemes.git

##################################################################################
## Copy resources file
cd $builddir
#Create folders in user directory (eg. Documents,Downloads,etc.)#
mkdir -p home/$username/Documents Downloads Music Pictures Videos
mkdir -p home/$username/.config/bg fonts icons grubthemes

cp -R bg/* /home/$username/.config/bg
cp -R font/* /home/$username/.config/fonts
cp -R icon/* /home/$username/.config/icons
cp -R grubthemes/* /home/$username/grubthemes

chown -R $username:$username /home/$username
xdg-user-dirs-update
