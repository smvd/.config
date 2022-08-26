#!/bin/python3

import os

out = ''

retIndex = os.popen('hyprctl -j monitors | jq .[0].activeWorkspace.id')
retWorkspaces = os.popen('hyprctl -j workspaces | jq .[].id')

index = int(retIndex.read())
workspaces = retWorkspaces.read().split('\n')[:-1]

for i in range(1, 11):
    if i == index:
        out += '\n'
    elif str(i) in workspaces:
        out += '\n'
    else:
        out += '\n'

print(out)
