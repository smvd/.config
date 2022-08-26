#!/bin/fish
 
if string match -q '*True*' (connmanctl state | grep 'OfflineMode')
    echo ''
else if test (connmanctl services | head -n 1 | sed 's/^[^ ]* //' | sed 's/ .*//') = 'Wired'
    echo ''
else if connmanctl technologies | grep 'Connected = True' &>/dev/null
    echo ''
else
    echo ''
end
