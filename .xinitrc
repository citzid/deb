#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# invoke global X session script
. /etc/X11/Xsession

#fix screen 1366*768 Monitor Config
xrandr -s 1360x768 &

# Start window manager
sxhkd -c $HOME/.config/bspwm/sxhkdrc
exec bspwm