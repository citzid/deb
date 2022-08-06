#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id

##########################################################################
##Install Alacritty terminal emulator

#If you're just interested in the Alacritty binary and you don't need the terminfo file, desktop entry, manual page or shell completions, you can install it directly through cargo:

#apt install -y cargo
#cargo install alacritty


###################################FULLINSTALL###################################

#install
apt-get install -y curl cargo
git clone https://github.com/alacritty/alacritty.git
cd alacritty
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup override set stable
rustup update stable

#dependencies
apt-get install -y cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3 xfce4-settings

###Building###
cargo build --release

#Terminfo
sudo tic -xe alacritty,alacritty-direct extra/alacritty.info

#Desktop Entry
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

#If you are having problems with Alacritty's logo, you can replace it with prerendered PNGs and simplified SVGs available in the extra/logo/compat directory.

#Manual Page
sudo mkdir -p /usr/local/share/man/man1
gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
gzip -c extra/alacritty-msg.man | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null

#Shell completions
##########################################################################
#ZSH
apt-get install -y zsh
mkdir -p ${ZDOTDIR:-~}/.zsh_functions
echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc
cp extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty

##########################################################################
#BASH
#To install the completions for bash, you can source the extra/completions/alacritty.bash file in your ~/.bashrc file.

#If you do not plan to delete the source folder of alacritty, you can run

#echo "source $(pwd)/extra/completions/alacritty.bash" >> ~/.bashrc
#Otherwise you can copy it to the ~/.bash_completion folder and source it from there:

#mkdir -p ~/.bash_completion
#cp extra/completions/alacritty.bash ~/.bash_completion/alacritty
#echo "source ~/.bash_completion/alacritty" >> ~/.bashrc

##########################################################################
#FISH
#To install the completions for fish, run

#mkdir -p $fish_complete_path[1]
#cp extra/completions/alacritty.fish $fish_complete_path[1]/alacritty.fish

#this line to fix gprated wont run
xhost +local:

