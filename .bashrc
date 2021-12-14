# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="/home/Intel/.cargo/env":$PATH
export PATH="/home/Intel/.local/bin":$PATH

export EDITOR="vim"

alias get='doas pacman -S'
alias seek='xbps-query -Rs'
alias clean='doas xbps-remove -Oo'
alias purge='doas pacman -Rcns'
alias update='doas pacman -Syu'
alias delete='doas shred -uzn5'
alias xp='xprop | grep "WM_WINDOW_ROLE\|WM_CLASS" && echo "WM_CLASS(STRING) = \"NAME\", \"CLASS\""'

source "$HOME/.cargo/env"
