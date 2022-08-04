#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id

##################################################################################
##Install Rofi Menu

#clone#
git clone --recursive https://github.com/DaveDavenport/rofi
cd rofi/
autoreconf -i
mkdir build && cd build
../configure --prefix=home/$username/.config/rofi
sudo make && sudo make install

