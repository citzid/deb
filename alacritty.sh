#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id

##################################################################################
##Install Alacritty terminal emulator

#Clone Alacritty Repo#
git clone https://github.com/jwilm/alacritty.git
sudo apt-get -y curl
cd alacritty
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

#Add Library#
sudo apt-get install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev python3

#Building Alacritty#
cargo build --release

#Set desktop entry#
sudo cp target/release/alacritty /usr/local/bin # or anywhere else in $PATH
sudo cp extra/logo/alacritty-term.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/linux/Alacritty.desktop
sudo update-desktop-database

#install manual pages#
sudo mkdir -p /usr/local/share/man/man1
gzip -c extra/alacritty.man | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null

##################################################################################
#Configure Alacritty Shell Completions#

# On Bash
# If you do not plan to delete the source folder of alacritty, you can run
#echo "source $(pwd)/extra/completions/alacritty.bash" >> ~/.bashrc
# Otherwise you can copy it to the ~/.bash_completion folder and source it from there:
#mkdir -p ~/.bash_completion
#cp extra/completions/alacritty.bash ~/.bash_completion/alacritty
#echo "source ~/.bash_completion/alacritty" >> ~/.bashrc

# On ZSH Shell
# If you do not already have such a directory registered through your ~/.zshrc, you can add one like this:
mkdir -p ${ZDOTDIR:-~}/.zsh_functions
echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc
#  Then copy the completion file to this directory:
cp extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty

###source https://techviewleo.com/how-to-install-alacritty-terminal-emulator/###