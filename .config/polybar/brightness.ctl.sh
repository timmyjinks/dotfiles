#!/bin/bash
BRIGHTNESS_VALUE=`brightnessctl | grep -o "(.*" | tr -d "()"`
BRIGHTNESS_NR=${BRIGHTNESS_VALUE//%}
len=${#BRIGHTNESS_VALUE}
echo "$BRIGHTNESS_VALUE"
