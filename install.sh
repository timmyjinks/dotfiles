#!/usr/bin/env bash

# start 
echo "Starting installation of dotfiles..."

# zsh
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/bin
cp -v $HOME/dotfiles/.zshrc $HOME/

# nvim
mkdir -p $HOME/.config/nvim
cp -v $HOME/dotfiles/.config/nvim/* $HOME/.config/nvim

# bspwm
# mkdir $HOME/.config/bspwm
# chmod +x $HOME/.config/bspwm
# chmod +x $HOME/dotfiles/.config/autostart.sh
# cp -v $HOME/dotfiles/.config/bspwm/bspwmrc $HOME/.config/bspwm
# cp -v $HOME/dotfiles/.config/bspwm/autostart.sh $HOME/.config/bspwm

# sxhkd
# mkdir $HOME/.config/sxhkd
# cp -v $HOME/dotfiles/.config/sxhkd/sxhkdrc $HOME/.config/sxhkd

# kitty
mkdir -p $HOME/.config/kitty
cp -v $HOME/dotfiles/.config/kitty/* $HOME/.config/kitty

# polybar
# mkdir $HOME/.config/polybar
# chmod +x $HOME/dotfiles/.config/polybar/launch.sh
# cp -v $HOME/dotfiles/.config/polybar/config.ini $HOME/.config/polybar
# cp -v $HOME/dotfiles/.config/polybar/launch.sh $HOME/.config/polybar

#end
echo "...Installation complete"
