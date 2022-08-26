#! /bin/fish
hyprpaper &
eww open statusbar
~/.script/WorkspaceListener.py &
libinput-gestures-setup start &
dunst &
pulseaudio &
