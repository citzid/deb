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
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# test for an existing bus daemon, just to be safe
if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then
  # if not found, launch a new one
  eval `dbus-launch --sh-syntax --exit-with-session`
  echo "D-Bus per-session daemon address is: $DBUS_SESSION_BUS_ADDRESS"
fi

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
        sxhkd -c /home/$username/.config/bspwm/bspwmrc &

        # Create fifo pipe
        [ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
        mkfifo "$PANEL_FIFO"

        exec dbus-launch bspwm -c /home/glindste/.config/bspwm/bspwmrc -s "$PANEL_FIFO" -p W 2> ~/.bspwm.log
        ;;
    *)
        exec dbus-launch awesome
        ;;
esac
