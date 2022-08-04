#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)
mkdir -p home/$username/.config

##################################################################################
##Install terminal emulator

#apt-get install -y kitty
#apt-get install -y terminator
#apt-get install -y urxvt



##################################################################################
##Install browser

#apt-get install -y firefox-esr
apt-get install -y brave
#apt-get install -y chromium



##################################################################################
##Install file manager

apt-get install -y thunar
#apt-get install -y pcmanfm
#apt-get install -y nautilus
#apt-get install -y dolphin



##################################################################################
##Install editor

apt-get install -y geany
#apt-get install -y notepadqq
#apt-get install -y vim
#apt-get install -y neovim



##################################################################################
##Install wallpaper manager

apt-get install -y nitrogen
#apt-get install -y feh
#apt-get install -y variety



##################################################################################
##Install theme setting

apt-get install -y lxappearance



##################################################################################
##Install theme setting

apt-get install -y unzip ranger arandr



##################################################################################
##Install Audio setting

apt-get install -y pulseaudio pulseaudio-alsa alsa-utils



##################################################################################
##Download Nordic Theme

cd /usr/share/themes/
git clone https://github.com/EliverLara/Nordic.git



##################################################################################
##Install font Fira Code Nerd Font variant needed
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip
unzip FiraCode.zip -d /usr/share/fonts
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Meslo.zip
#unzip Meslo.zip -d /usr/share/fonts
fc-cache -vf
