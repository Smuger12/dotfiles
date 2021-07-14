#!/bin/bash

git_config=~/dotfiles-repo/.config
git_home=~/dotfiles-repo

# cp -rv ~/.config/picom $git_config
# cp -rv ~/.config/polybar $git_config
# cp -rv ~/.config/kitty $git_config
# cp -rv ~/.config/bspwm $git_config
# cp -rv ~/.config/sxhkd $git_config
# cp -rv ~/.config/neofetch $git_config
# cp -rv ~/.zshrc $git_home
# cp -rv ~/my_scripts/* $git_home/my_scripts
#cp -rv ~/.config/alacritty/alacritty.yml $git_config/alacritty/alacritty-nord.yml
#cp -rv ~/.config/sway/* $git_config/sway/
#cp -rv ~/.config/waybar/* $git_config/waybar/
cp -rv ~/.config/fish/config.fish $git_config/fish/
cp -rv ~/.config/starship.toml $git_config
#cp -rv ~/.config/nwg-* $git_config
sudo cp -rv /etc/environment $git_home/etc/environment

echo "All Done!"
