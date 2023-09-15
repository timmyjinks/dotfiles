#! /bin/sh

# Compositor 
killall picom
while pgrep picom > /dev/null;
do 
    sleep 0.1
done;
picom &

# set cursor
xsetroot -cursor_name left_ptr &

# Start sxhkd 
pgrep -x sxhkd > /dev/null || sxhkd &

# Set wallpaper
feh --bg-scale Virtual-1 

# Launch bar 
$HOME/.config/polybar/launch.sh

pgrep -x volumeicon || volumeicon &

nm-applet &