#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id


##################################################################################
##Install terminal emulator
apt-get install -y kitty
#apt-get install -y urxvt
#apt-get install -y terminator
#If you want to install ALACRITTY, uncomment alacritty.sh on go.sh

##################################################################################
##Install browser
#apt-get install -y firefox-esr
apt-get install -y brave
#apt-get install -y chromium

##################################################################################
##Install file manager
apt-get install -y ranger
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
#apt-get install -y mousepad

##################################################################################
##Install launcher Menu
#apt-get install -y dmenu
#apt-get install -y rofi
apt-get install -y wofi

##################################################################################
##Install wallpaper manager
apt-get install -y nitrogen
#apt-get install -y feh
#apt-get install -y variety

##################################################################################
##Install appearance setting
apt-get install -y lxappearance arandr 

##################################################################################
##Install other
apt-get install -y make gcc unzip fonts-ubuntu



##################################################################################
##############################Install display manager#############################

##dependencies for ly##
sudo apt install -y build-essential libpam0g-dev libxcb-xkb-dev

##Install Ly Console Display Manager##
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly/
sudo make && sudo make install
sudo systemctl enable ly
cd ..

##Lightdm/sddm can be used instead of Ly (more common)##
##comment out all ly console display if choosing lightdm##
# sudo apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
# sudo systemctl enable lightdm


##XSessions and dwm.desktop##
# if [[ ! -d /usr/share/xsessions ]]; then
#     sudo mkdir /usr/share/xsessions
# fi
# cat > ./temp << "EOF"
# [Desktop Entry]
# Encoding=UTF-8
# Name=dwm
# Comment=Dynamic window manager
# Exec=dwm
# Icon=dwm
# Type=XSession
# EOF
# sudo cp ./temp /usr/share/xsessions/dwm.desktop;rm ./temp


##################################################################################
##Download Nordic Theme
cd /usr/share/themes/
git clone https://github.com/EliverLara/Nordic.git

##################################################################################
##Install font Fira Code Nerd Font variant needed
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip
#unzip FiraCode.zip -d /usr/share/fonts
#wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Meslo.zip
#unzip Meslo.zip -d /usr/share/fonts

fc-cache -vf
