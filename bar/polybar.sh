#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


##################################################################################
##Install Polybar Panel

#Install dependencies#
#sudo apt-get -y install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev
#sudo apt-get -y install libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev
#sudo apt-get -y install libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen
#sudo apt-get -y install xcb-proto libxcb-xrm-dev i3-wm libasound2-dev
#sudo apt-get -y install libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev

apt install -y build-essential git cmake cmake-data pkg-config python3-sphinx python3-packaging libuv1-dev libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev
apt install -y libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev


#Clone the source for Polybar#
#git clone https://github.com/jaagr/polybar.git

#Build#
#cd polybar && ./build.sh

# Online install #
apt purge rust -y
apt install -y polybar
mkdir -p  /home/$username/.config/polybar
cp /home/$username/deb/dotfiles/polybar/* /home/$username/.config/polybar
chmod +x /home/$username/.config/polybar/*



