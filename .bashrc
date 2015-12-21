#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

<<<<<<< HEAD
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/lib/python3.5/site-packages/powerline/bindings/bash/powerline.sh

eval $(dircolors ~/.dircolors)
=======
source ~/.shell_prompt.sh
>>>>>>> 6baf1a4daf40ab9b91dfb2572dc9f85f0fa917bd
