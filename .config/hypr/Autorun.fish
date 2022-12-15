#! /bin/fish
swaybg --image '/home/smvd/wallpaper.svg' &
gsettings set org.gnome.desktop.interface cursor-theme numix-cursor
eww open statusbar
~/.script/WorkspaceListener.py &
libinput-gestures-setup start &
dunst &
pulseaudio &
~/.script/Homepage.py &
~/.script/Maintenance.fish
