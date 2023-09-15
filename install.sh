#!/usr/bin/env bash

#start 
echo "Starting installation of dotfiles..."

#bspwm
mkdir $HOME/.config/bspwm
cp -v $HOME/dotfiles/.config/bspwm/bspwmrc $HOME/.config/bspwm/

#sxhkd
mkdir $HOME/.config/sxhkd
cp -v $HOME/dotfiles/.config/sxhkd/sxhkdrc $HOME/.config/sxhkd/

#kitty
mkdir $HOME/.config/kitty
cp -v $HOME/dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty/

#polybar
mkdir $HOME/.config/polybar
cp -v $HOME/dotfiles/.config/polybar/config.ini $HOME/.config/polybar/
cp -v $HOME/dotfiles/.config/polybar/launch.sh $HOME/.config/polybar/

#end
echo "...Installation complete"