#!/bin/bash

git_config=~/git/dotfiles/.config/
git_home=~/git/dotfiles

cp -r ~/.config/picom $git_config
cp -r ~/.config/polybar $git_config
cp -r ~/.config/kitty $git_config
cp -r ~/.config/bspwm $git_config
cp -r ~/.config/sxhkd $git_config
cp -r ~/.config/alacritty $git_config
cp -r ~/.config/neofetch $git_config
cp -r ~/.zshrc $git_home
cp -r ~/my_scripts $git_home
