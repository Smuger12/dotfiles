# my aliases
alias matrix="unimatrix -n -s 96 -l o"
alias swayc="micro ~/.config/sway/config"
alias waybarc="micro ~/.config/waybar/config"
alias waybarcss="micro ~/.config/waybar/style.css"
alias fishc="micro ~/.config/fish/config.fish"
alias ipa='ip --color=always address'
alias myip-'curl ipinfo.io/ip'
alias off='systemctl poweroff'
alias re='systemctl reboot'
alias pacman='sudo pacman'
alias c='clear'

# launch starship prompt
starship init fish | source
