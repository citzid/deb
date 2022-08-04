#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


############################Install SWAY Window Manager##########################
##################################################################################

mkdir -p home/$username/.config/sway
sudo apt install -y sway
cp ~/etc/sway/config /home/$username/.config/sway/config



##################################################################################
##Install Dependencies##



