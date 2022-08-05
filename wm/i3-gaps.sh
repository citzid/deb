#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id

##########################################################################
##
sudo apt purge i3 i3-wm


sudo apt-get install -y libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev
sudo apt-get install -y libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev
sudo apt-get install -y libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev
sudo apt-get install -y autoconf xutils-dev libtool automake libxcb-icccm4-dev  libstartup-notification0-dev
sudo apt-get install -y libxcb-shape0-dev autoconf libxcb-xrm-dev libxcb-randr0-dev libxcb-xtest0-dev
sudo apt-get install -y libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev meson dh-autoreconf
sudo apt-get install -y libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev
sudo apt-get install -y libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev
sudo apt-get install -y libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev
sudo apt-get install -y libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev


git clone https://github.com/Airblader/i3 i3-gaps
cd i3-gaps
mkdir -p build && cd build
meson --prefix /usr/local
ninja
sudo ninja install
