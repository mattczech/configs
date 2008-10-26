#!/bin/sh

#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

# exec gnome-session
# exec startkde
# exec startxfce4
# exec icewm
# exec openbox
# exec blackbox
# exec fluxbox
# exec ratpoison
# exec dwm
# ... or any other WM of your choosing ...

ssh-agent

xmodmap /home/matt/.Xmodmap
xbindkeys

exec awesome -c /home/matt/.config/awesome/rc.lua
