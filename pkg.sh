#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)
mkdir -p home/$username/.config

##################################################################################
##Install terminal emulator

apt-get install -y kitty
#apt-get install -y terminator
#apt-get install -y urxvt


##################################################################################
##Install browser
#apt-get install -y firefox-esr
#apt-get install -y chromium

## BRAVE BROWSER INSTALL
sudo apt install software-properties-common apt-transport-https wget ca-certificates gnupg2 -y
wget -O- https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/brave-browser-archive-keyring.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y


##################################################################################
##Install file manager

apt-get install -y thunar
apt-get install -y ranger
#apt-get install -y pcmanfm
#apt-get install -y nautilus
#apt-get install -y dolphin



##################################################################################
##Install Launcher

#sudo apt install -y rofi
#sudo apt install -y wofi
sudo apt install -y dmenu


##################################################################################
##Install editor

apt-get install -y geany
#apt-get install -y vim
#apt-get install -y neovim

## VS-CODE
#sudo apt-get install wget gpg
#wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
#sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
#sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
#rm -f packages.microsoft.gpg
#sudo apt install apt-transport-https
#sudo apt update
#sudo apt install code # or code-insiders



##################################################################################
##Install wallpaper manager

#apt-get install -y nitrogen
apt-get install -y feh
#apt-get install -y variety

## Install GNOME SCREENSHOT TOOLS
sudo apt-get install -y gnome-screenshot

##################################################################################
##Install theme setting
apt-get install -y lxappearance

## Download Nordic Theme
cd /usr/share/themes/
git clone https://github.com/EliverLara/Nordic.git
cd /home/$username

## Install font Fura Code Nerd Font variant needed
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip
unzip FiraCode.zip -d /usr/share/fonts
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Meslo.zip
#unzip Meslo.zip -d /usr/share/fonts
fc-cache -vf

##################################################################################
##Install Audio setting
apt-get install -y pulseaudio alsa-utils pavucontrol

sudo chown -R $username:www-data ~/

