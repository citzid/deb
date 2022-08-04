#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


############################Install BSP Window Manager##########################
##################################################################################

##################################################################################
##Install Dependencies##
apt-get -y install libx11-dev libxft-dev libxinerama-dev


##################################################################################
##Online Install##
sudo apt install -y bspwm sxhkd polybar xorg
sudo apt autoremove -y lemonbar



##################################################################################
##Copy configuration##
cd /home/$username
mkdir -p .config
cd /home/$username/.config
mkdir -p bspwm sxhkd polybar

cd /home/$username/deb/wm
cp /usr/share/doc/bspwm/examples/bspwmrc /home/$username/.config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc /home/$username/.config/sxhkd/
cp /usr/share/doc/polybar/config /home/$username/.config/polybar/
cp .xinitrc /home/$username/

chmod +x /home/$username/.config/bspwm/bspwmrc
chmod +x /home/$username/.config/sxhkd/sxhkdrc
chmod +x /home/$username/.xinitrc
##################################################################################

