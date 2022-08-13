#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)
mkdir -p home/$username/.config

##################################################################################
## DEPENDENCIES

apt-get install -y curl meson gcc g++ wget pulseaudio pavucontrol intel-microcode build-essential dkms linux-headers-$(uname -r) 
apt-get install -y fonts-font-fontawesome htop conky neofetch make cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 xfce4-settings
apt-get install -y gnome-screenshot live-build arandr

# Install & enable firewall
sudo apt install ufw && sudo ufw enable

#this line to fix gprated wont run
xhost +local:
