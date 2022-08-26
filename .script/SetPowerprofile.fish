#!/bin/fish

set profile (powerprofilesctl list | grep -E '^. [a-z]' | sed 's/[^a-zA-Z-]//g' | rofi -dmenu -select (powerprofilesctl get) )

set profile (echo $profile | sed 's/ //')
powerprofilesctl set $profile

