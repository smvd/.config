#!/bin/python3

import socket
import sys
import os

sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)

socketFile = ""

for root, dirs, files in os.walk('/tmp/hypr'):
    if len(dirs) == 1:
        socketFile = '/tmp/hypr/{}/.socket2.sock'.format(dirs[0])

sock.connect(socketFile)

while True:
    out = 'eww update statusbar_workspace_var=\"'

    data = sock.recv(1)
    if data == b'\n':
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

        out += '\"'        
        os.system(out)
