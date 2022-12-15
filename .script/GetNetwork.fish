#!/bin/fish

if string match -q '*disconnected*' (iwctl station list | grep 'connected')
    echo ''
else
    echo ''
end
