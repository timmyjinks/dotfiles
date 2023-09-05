#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar; do sleep 1; done
polybar &

echo "Polybar launched..."