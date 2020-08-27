###########################################
### Enable colors and change ZSH prompt ###
###########################################

autoload -U colors && colors

if [[ $EUID -ne 0 ]]; then
   PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b " 
else
   PS1="%B%{$fg[red]%}[%{$fg[red]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}#%b "
fi

############
### PATH ###
############

export PATH=~/.local/bin:$PATH

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
HISTFILE=~/.cache/zsh/history

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

##################
### Auto stuff ###
##################

setopt AUTO_CD # auto cd

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
alias p='sudo pacman'
alias c='clear'
alias rezsh='source ~/.zshrc'
alias zshrc='micro ~/.zshrc'
alias yt-dl='youtube-dl'
alias off='sudo shutdown now'
alias re='sudo reboot'
alias grep='grep --color=auto'
alias binds='micro ~/.config/sxhkd/sxhkdrc'
alias poly='micro ~/.config/polybar/config'
alias bspwm='micro ~/.config/bspwm/bspwmrc'
alias pico='micro ~/.config/picom/picom.conf'

##########################
### Other useful stuff ###
##########################
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/pkgfile/command-not-found.zsh
