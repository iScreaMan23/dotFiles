#!/usr/bin/env sh

# Keyboard (Could be cleaned up)
xmodmap $HOME/.config/keysanity/usVim &
xmodmap $HOME/.config/keysanity/modRemap &

# Screen (Most should be moved to /etc/X11/xorg.conf but lazy right now
xset r rate 200 50
unclutter --timeout 3 --jitter 75 --ignore-scrolling &
xinput set-prop "Elan Touchpad" "libinput Natural Scrolling Enabled" 1
xinput set-prop "Elan Touchpad" "libinput Accel Speed" 0.300000
xrandr -s 1280x720

exec bspwm
