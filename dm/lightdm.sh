#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
##Lightdm/sddm can be used instead of Ly (more common)##
sudo apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo systemctl enable lightdm