#!/bin/bash

git_config=~/git-repo/dotfiles/.config
git_home=~/git-repo/dotfiles

# cp -rv ~/.config/picom $git_config
# cp -rv ~/.config/polybar $git_config
# cp -rv ~/.config/kitty $git_config
# cp -rv ~/.config/bspwm $git_config
# cp -rv ~/.config/sxhkd $git_config
cp -rv ~/.config/alacritty $git_config
# cp -rv ~/.config/neofetch $git_config
# cp -rv ~/.zshrc $git_home
# cp -rv ~/my_scripts $git_home
cp -rv ~/.config/sway/config $git_config/sway/
cp -rv ~/.config/waybar/* $git_config/waybar/
cp -rv ~/.config/fish/config.fish $git_config/fish/
cp -rv ~/.config/starship.toml $git_config
