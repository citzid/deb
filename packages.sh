#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id

##################################################################################
##Install terminal emulator
apt-get install -y kitty
#apt-get install -y terminator

##################################################################################
##Install browser
apt-get install -y firefox-esr
#apt-get install -y brave
#apt-get install -y chromium

##################################################################################
##Install file manager
#apt-get install -y thunar
apt-get install -y pcmanfm
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
apt-get install -y unzip ranger arandr dmenu

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
chown -R $username:$username /home/$username
xdg-user-dirs-update

##################################################################################
##RUN login window
#sudo systemctl start sddm
#sudo systemctl enable sddm

printf "\e[1;32mMade by @citz_id : Done!! please reboot.Type 'sudo reboot' enter.\e[0m\n"
