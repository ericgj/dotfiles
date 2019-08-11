#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi


VBoxClient-all &

# xterm + tmux
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
tmux start
exec xterm

# awesome
#lilyterm &
#exec awesome
