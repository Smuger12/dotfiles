###########################################
### Enable colors and change ZSH prompt ###
###########################################

autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

#############################
### Environment variables ###
#############################

export PATH=~/.local/bin:$PATH
#export EDITOR=/usr/bin/micro
# flatpak stuff
# export XDG_DATA_DIRS=/var/lib/flatpak/exports/share:~/.local/share/flatpak/exports/share:/usr/share

######################
### Enable history ###
######################

setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_REDUCE_BLANKS

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/zsh-history

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

####################
### Useful stuff ###
####################

setopt AUTO_CD # auto cd

stty stop undef	# Disable ctrl-s to freeze terminal.

# tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # include hidden files.

# correction
#setopt CORRECT
#setopt CORRECT_ALL

##################
### My aliases ###
##################

alias ls='exa -alh --group-directories-first --time-style=long-iso --colour=always'
alias pacman='sudo pacman'
alias c='clear'
alias rezsh='source ~/.zshrc'
alias zshrc='micro ~/.zshrc'
alias off='systemctl poweroff'
alias re='systemctl reboot'
alias grep='grep --color=auto'
alias ipa='ip --color=always address'
alias myip-'curl ipinfo.io/ip'
alias binds='micro ~/.config/sxhkd/sxhkdrc'
alias poly='micro ~/.config/polybar/config'
alias bspwm='micro ~/.config/bspwm/bspwmrc'
alias pico='micro ~/.config/picom/picom.conf'

###############
### Plugins ###
###############
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
