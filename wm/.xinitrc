#!/bin/sh
#
# ~/.xinitrc
#
username=$(id -u -n 1000)
#
#
#
#
# Executed by startx (run your window manager from here)

# Set keymap to us
setxkbmap us

# Cursor
xsetroot -cursor_name left_ptr

# Load .Xresources
xrdb ~/.Xresources

# Load Window Manager
DEFAULT_SESSION=bspwm
case $1 in
    awesome)
        exec dbus-launch awesome
        ;;
    xmonad)
        exec dbus-launch xmonad
        ;;
    bspwm)
        #gifview --animate -new--window root  animated.gif &

        # bar could not find font issue fix
        xset +fp /usr/share/fonts/local
        xset fp rehash
        # end fix

        # Keybindings
        sxhkd -c /home/$username/.config/sxhkd/sxhkdrc &

        # Create fifo pipe
        [ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
        mkfifo "$PANEL_FIFO"

        exec dbus-launch bspwm -c /home/$username/.config/bspwm/bspwmrc -s "$PANEL_FIFO" -p W 2> ~/.bspwm.log
        ;;
    *)
        exec dbus-launch awesome
        ;;
esac
