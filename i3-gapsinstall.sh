#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
#I3WM INSTALLER

##################################################################################
##Change repo Debian to SID 
cp /etc/apt/sources.list /etc/apt/sources.list.bak
cp sources.list /etc/apt/sources.list
apt update && apt upgrade -y

##################################################################################
##INSTALL PACKAGES
chmod +x pkg.sh
echo -e "\e[1;36m Installing pkg.sh \e[0m"
./pkg.sh
echo -e "\e[1;42m Your Packages Installed \e[0m"

##################################################################################
##INSTALL DISPLAY MANAGER
cd dm
chmod +x lightdm.sh
echo -e "\e[1;36m Installing LIGHTDM \e[0m"
./lightdm.sh
echo -e "\e[1;42m Display Manager Installed \e[0m"
cd ..

##################################################################################
##INSTALL WINDOW MANAGER
cd wm
chmod +x i3-gaps.sh
echo -e "\e[1;36m Installing I3-GAPS \e[0m"
./i3-gaps.sh
echo -e "\e[1;42m Window Manager Installed \e[0m"
cd ..

##################################################################################
##INSTALL TERMINAL EMULATOR
cd te
chmod +x alacritty.sh
echo -e "\e[1;36m Installing ALACRITTY \e[0m"
./alacritty.sh
echo -e "\e[1;42m Alacritty installed \e[0m"
cd ..

##################################################################################
##INSTALL PANEL/BAR
cd bar
chmod +x polybar.sh
echo -e "\e[1;36m Installing POLYBAR \e[0m"
./polybar.sh
echo -e "\e[1;42m Polybar installed \e[0m"
cd ..

##################################################################################
##INSTALL MENU LAUNCHER
cd mn
chmod +x rofi.sh
echo -e "\e[1;36m Installing ROFI \e[0m"
./rofi.sh
echo -e "\e[1;42m Rofi installed \e[0m"
cd ..

##################################################################################
##INSTALL RESOURCES GIT
chmod +x resources.sh
echo -e "\e[1;36m Installing RESOURCES\e[0m"
./resources.sh
echo -e "\e[1;42m Your resources installed \e[0m"


##NOTE##
# i comment the rest script because not run normally. you can install manual.
# you can open and edit _resource.sh_ to use you own resource git.

