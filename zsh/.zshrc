#!/usr/bin/env zsh
antibody() {
        case "$1" in
        bundle)
                source <( /usr/local/bin/antibody $@ ) || /usr/local/bin/antibody $@
                ;;
        *)
                /usr/local/bin/antibody $@
                ;;
        esac
}

_antibody() {
        IFS=' ' read -A reply <<< "help bundle update home purge list init"
}

zypper-rm-pattern(){ rpm --query --recommends $1|xargs sudo zypper rm -u ; sudo zypper rm -u -t pattern $1 ;}
compctl -K _antibody antibody
antibody bundle < ~/.zsh_plugins

# Spaceship Customization

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false

SPACESHIP_EXEC_TIME_SHOW=false
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#555555'
