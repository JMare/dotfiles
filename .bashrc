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

alias nano='vim'
alias emacs='vim'
alias please='sudo $(history -p !!)'

alias ap_waf="/home/james/git/ardupilot/modules/waf/waf-light"


function newc() {
    mkdir $@
    cp /home/james/Dropbox/Uni/ECE2071/code/template/Makefile $@/Makefile 
    touch $@/main.c
}

export -f newc
export PATH=/opt/gcc-arm-none-eabi-4_9-2015q3/bin:$PATH
export PATH=/home/james/git/ardupilot/Tools/scripts/ardupilot/Tools/autotest:$PATH

export EDITOR="nvim"
export BROWSER="firefox"
