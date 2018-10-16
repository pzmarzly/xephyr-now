#!/bin/bash
# base code: https://github.com/pzmarzly/x11-input-mirror/tree/0.2.2/Xephyr

while :
do
    RAND=`shuf -i 1000-2000000000 -n 1`
    FILE="/tmp/.X11-unix/X$RAND"
    echo "Trying DISPLAY=:$RAND..."
    if [ ! -f $FILE ]; then
        break
    fi
done

echo "Starting Xephyr on DISPLAY=:$RAND"
Xephyr :$RAND -screen 800x600 -ac -resizeable -no-host-grab &

while :
do
    if [ -e $FILE ]; then
        sleep 0.3
        break
    fi
    sleep 0.1
done

DISPLAY=:$RAND i3 -c `dirname $0`/i3config &
sleep 1
DISPLAY=:$RAND $*

wait
exit 0
