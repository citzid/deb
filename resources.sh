#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


##################################################################################
## Clone my resources file (if you have own resources, you can edit this) ##
git clone https://github.com/citzid/bg.git
git clone https://github.com/citzid/fonts.git
git clone https://github.com/citzid/icons.git
git clone https://github.com/citzid/grubthemes.git

##################################################################################
cd 
#Create folders in user directory (eg. Documents,Downloads,etc.)#
cd /home/$username
mkdir -p Documents Downloads Music Pictures Videos

#Create config firectory
cd /home/$username/deb

## Copy resources file
cp -R bg /home/$username/.config
cp -R fonts /home/$username/.config
cp -R icons /home/$username/.config
cp -R grubthemes /home/$username/.config
#cp -R dotfiles/* /home/$username/.config

chown $username:$username /home/$username/
chown $username:$username /home/$username/.config/*
xdg-user-dirs-update

##################################################################################
##RUN login window
#sudo systemctl start ly
#sudo systemctl enable ly


printf "\e[1;32mMade by @citz_id : Done!! please reboot.Type 'sudo reboot' enter.\e[0m\n"
