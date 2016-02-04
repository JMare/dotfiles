#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


source ~/.shell_prompt.sh
eval "$(thefuck --alias fuck)"

#for APM SITL
export PATH=$PATH:$HOME/git/jsbsim/src
export PATH=$PATH:$HOME/git/ardupilot/Tools/autotest 
export PATH=/usr/lib/ccache:$PATH
