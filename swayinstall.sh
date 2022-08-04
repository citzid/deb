#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
#SWAY INSTALLER

##################################################################################
##Change repo Debian to SID 
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list
apt update && apt upgrade -y


##################################################################################
##INSTALL PACKAGES
chmod +x pkg.sh
echo "This script is about to run another script."
./packages.sh
echo "Your Packages Installed."
cd ..

##################################################################################
##INSTALL DISPLAY MANAGER
cd dm
chmod +x ly.sh
./ly.sh
echo "Display Manager Installed."
cd ..

##################################################################################
##INSTALL WINDOW MANAGER
cd wm
chmod +x sway.sh
./sway.sh
echo "Window Manager Installed."
cd ..

##################################################################################
##INSTALL TERMINAL EMULATOR
cd te
chmod +x alacritty.sh
./alacritty.sh
echo "Alacritty installed."
cd ..

##################################################################################
##INSTALL PANEL/BAR
cd bar
chmod +x polybar.sh
./polybar.sh
echo "Polybar installed."
cd ..

##################################################################################
##INSTALL MENU LAUNCHER
cd mn
chmod +x rofi.sh
./rofi.sh
echo "Rofi installed."
cd ..

##################################################################################
##INSTALL RESOURCES GIT
chmod +x resources.sh
./resources.sh
echo "Your resources installed."


##NOTE##
# i comment the rest script because not run normally. you can install manual.
# you can open and edit _resource.sh_ to use you own resource git.

