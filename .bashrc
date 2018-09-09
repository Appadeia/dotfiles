#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -h'
alias reboot='sudo reboot'
alias pacman='sudo pacman'
alias bat='upower -i /org/freedesktop/UPower/devices/battery_BAT0| grep -E "state|to\ full|percentage"'

#export PS1="\[\e[36m\]\u\[\e[m\] > \[\e[36m\]\w\[\e[m\] >>  "
#export PS1="\[\e[36m\]\u\[\e[m\] > \[\e[36m\]\w\[\e[m\]\[\e[37m\] \[\e[m\]\[\e[30;47m\]>>\[\e[m\]  "
export PS1="\[\e[36m\]\u\[\e[m\]\[\e[37m\] \[\e[m\]\[\e[36m\]\w\[\e[m\] \[\e[30;47m\] >> \[\e[m\] "
aursearch () {
    curl -sSL "https://aur.archlinux.org/rpc/?v=5&type=search&arg=$@" | jq -r '.results[]'
}
