#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)
##################################################################################
##Install Dekstop Manager
apt-get -y install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
dpkg-reconfigure lightdm
cp .xinitrc /home/$username/
chmod +x alacritty.sh berry.desktop packages.sh polybar.sh resources.sh .xinitrc
##################################################################################
##Install Berry Window Manager
#Install Dependencies#
apt-get -y install libx11-dev libxft-dev libxinerama-dev

#Online Install#
#git clone https://github.com/JLErvin/berry
#cd berry
#make
#sudo make install
#mkdir $HOME/.config/berry
#cp examples/sxhkdrc $HOME/.config/berry/sxhkdrc
#cp examples/autostart $HOME/.config/berry/autostart

#Offline Install berry wm#
dpkg -i pkg/berry_0.1.11-1_amd64_bullseye.deb
