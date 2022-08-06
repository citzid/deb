#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# Set keymap to us
setxkbmap us

# Cursor
xsetroot -cursor_name left_ptr

# Load .Xresources
#xrdb ~/.Xresources

# Load Window Manager
sxhkd -c /home/$USER/.config/sxhkd/sxhkdrc &
# uncomment what wm you use
exec i3
#exec dbus-launch bspwm
#exec berry
