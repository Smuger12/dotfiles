#
# My very simple fish config
#

# my aliases

#alias swayc="micro ~/.config/sway/config"
#alias waybarc="micro ~/.config/waybar/config"
#alias waybarcss="micro ~/.config/waybar/style.css"
alias fishc="micro ~/.config/fish/config.fish"
alias pacc="sudo micro /etc/pacman.conf"

alias matrix="unimatrix -n -s 96 -l o"
alias ipa="ip --color=always address"
alias myip="curl ipinfo.io/ip"
alias off="systemctl poweroff"
alias re="systemctl reboot"
alias c="clear"
alias lsl="exa -alh --group-directories-first --time-style=long-iso --no-filesize --colour=always --icons"
alias lsa="exa -a --group-directories-first --colour=always --icons"
alias ls="ls --group-directories-first --color=always"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# launch starship prompt
starship init fish | source
