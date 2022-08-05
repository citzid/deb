#!/bin/bash
#RUN this after installing base Debian with no GUI and install git
#Made by @citz_id
username=$(id -u -n 1000)


############################Install I3 Window Manager##########################
##################################################################################

##################################################################################
##Install Dependencies##
sudo apt install -y nitrogen fonts-font-awesome rofi pulseaudio-utils alsa-tools clipit gcc locate acpi libnotify-bin i3blocks htop flameshoot


##################################################################################
##Online Install##
wget -O- https://baltocdn.com/i3-window-manager/signing.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/i3wm-signing.gpg
apt install apt-transport-https --yes
echo "deb https://baltocdn.com/i3-window-manager/i3/i3-autobuild/ all main" | sudo tee /etc/apt/sources.list.d/i3-autobuild.list
apt update
apt install -y i3 i3lock i3status suckless-tools dmenu


mkdir -p ~/.config/i3/bin/

cat > ~/.config/i3/bin/logout << 'EOL'
#!/usr/bin/env bash
# Manage logout with rofi
option=`echo -e "suspend\nlock screen\nlogout\nreboot\npoweroff\nKill user $USER" | rofi -width 600 -dmenu -p system`
case $option in
    suspend)
        sudo  /usr/bin/systemctl syspend
        ;;
    'lock screen')
        i3lock -i /home/kifarunix/Pictures/linuxtux.png
        ;;
    logout)
        i3-nagbar -t warning -m 'Are you sure you  want to exit i3? This will end your X session.' -b 'Yes, exit i3' 'i3-msg exit'
        ;;
    reboot)
        /usr/bin/systemctl reboot
        ;;
    poweroff)
        /usr/bin/systemctl poweroff
        ;;
    'kill user $USER')
        loginctl kill-user $USER
        ;;
esac
EOL
chmod +x ~/.config/i3/bin/logout



cat > ~/.config/i3/bin/rofifinder << 'EOL'
#!/bin/bash
xdg-open "$(locate -i / | rofi -threads 0 -width 100 -dmenu -i -p "Find")"
EOL
chmod +x  ~/.config/i3/bin/rofifinder
apt install mlocate && updatedb


cat > ~/.config/i3/bin/rofi_app_launcher << 'EOL'
#!/usr/bin/env bash
# Run rofi app launcher
i3-dmenu-desktop --dmenu="rofi -dmenu -i -p 'apps'"
EOL
chmod +x ~/.config/i3/bin/rofi_app_launcher

#The i3 configuration for rofi app launcher is;
# start dmenu (a program launcher)
# bindsym $mod+d exec --no-startup-id ~/.config/i3/bin/rofi_app_launcher


