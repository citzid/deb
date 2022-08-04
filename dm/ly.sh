#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id

##################################################################################
##############################Install display manager#############################

##dependencies for ly##
sudo apt install -y build-essential libpam0g-dev libxcb-xkb-dev

##Install Ly Console Display Manager##
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly
sudo make && sudo make install
cd ..

