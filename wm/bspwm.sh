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
sudo apt install -y bspwm sxhkd xorg
sudo apt autoremove -y lemonbar



##################################################################################
##Copy configuration##
cp /usr/share/doc/bspwm/examples/bspwmrc /home/ab/.config/bspwm/bspwmrc
cp /usr/share/doc/bspwm/examples/sxhkd /home/ab/.config/sxhkd/sxhkdrc
cp /usr/share/doc/polybar/config /home/ab/.config/polybar/config
cp .xinitrc /home/$username/

chmod +x /home/$username/.config/bspwm/bspwmrc
chmod +x /home/$username/.config/sxhkd/sxhkdrc
chmod +x /home/$username/.xinitrc
##################################################################################

