# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="/home/void/.dwm":$PATH
export EDITOR="nvim"

alias get='doas xbps-install'
alias seek='xbps-query -Rs'
alias purge='doas xbps-remove -Oo'
alias update='doas xbps-install -Su'
