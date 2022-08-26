#!/bin/fish

bluetoothctl show | grep 'Powered: yes' > /dev/null

if test $status -eq 1
    echo ""
else
    bluetoothctl info > /dev/null
    if test $status -eq 1
        echo ""
    else
        echo ""
    end
end
