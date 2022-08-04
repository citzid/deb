#!/bin/bash
# 
# ~/.xinitrc

sxhkd -c $HOME/.config/berry/sxhkdrc &
exec bspwm
