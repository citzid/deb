#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


############################Install BSPWM Window Manager##########################
##################################################################################

##################################################################################
##Install Dependencies##
sudo apt install -y gcc g++ make cmake xcb pkg-config python3 libfreetype6-dev
sudo apt install -y libxcb-util0-dev libxcb-ewmh-dev libxcb-randr0-dev
sudo apt install -y libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev
sudo apt install -y libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev
sudo apt install -y libasound2-dev libxcb-xtest0-dev libxcb-shape0-dev xorg 

##################################################################################
## Install bspwm sxhkd ##
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
git clone https://github.com/baskerville/xdo

cd sxhkd && make && sudo make install
cd ../bspwm && make && sudo make install
cd ../xdo && make && sudo make install

sudo apt install -y bspwm sxhkd

##################################################################################
## Configuration ##
mkdir -p /home/$username/.config/{bspwm,sxhkd}

## Copy Template configuration ##
cd /home/$username/deb/wm
cp bspwmrc /home/$username/.config/bspwm/
cp sxhkdrc /home/$username/.config/sxhkd/
cp .xinitrc /home/$username/

## move original config example for backup ##
cp /usr/share/doc/bspwm/examples/bspwmrc /home/$username/.config/bspwm/bspwmrc.bak
cp /usr/share/doc/bspwm/examples/sxhkdrc /home/$username/.config/sxhkd/sxhkdrc.bak

##################################################################################
chmod +x /home/$username/.config/bspwm/bspwmrc
chmod +x /home/$username/.config/sxhkd/sxhkdrc
chmod +x /home/$username/.xinitrc

##################################################################################
## Picom compositor install
cd /home/$username/deb/
git clone https://github.com/yshui/picom.git && cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build
sudo ninja -C build install

cd /home/$username/deb/wm
mkdir -p /home/$username/.config/picom
cp -R picom.conf cd /home/$username/.config/picom/


######################################EOF#########################################


