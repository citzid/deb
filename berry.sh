#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


##################################################################################
##Install Dekstop Manager
apt-get -y install lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings make gcc
dpkg-reconfigure lightdm


############################Install Berry Window Manager##########################
##################################################################################

##################################################################################
##Install Dependencies##
apt-get -y install libx11-dev libxft-dev libxinerama-dev


##################################################################################
##Online Install##
git clone https://github.com/JLErvin/berry
cd berry
sudo make && sudo make install
mkdir /home/$username/.config
mkdir /home/$username/.config/berry
cp examples/sxhkdrc /home/$username/.config/berry/sxhkdrc
cp examples/autostart /home/$username/.config/berry/autostart



##################################################################################
##Offline Install berry wm##
#dpkg -i pkg/berry_0.1.11-1_amd64_bullseye.deb
##setup configuration##
#mkdir -p ~/.config
#mkdir -p ~/.config/berry
#cd home/$username
#cp examples/* /home/$username.config/berry/

##################################################################################
cp .xinitrc /home/$username/
cp berry.desktop ~/usr/share/xsessions/
