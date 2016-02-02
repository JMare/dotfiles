#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


source ~/.shell_prompt.sh
eval "$(thefuck --alias fuck)"

alias nano='vim'
alias emacs='vim'
alias please='sudo $(history -p !!)'
