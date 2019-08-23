#!/usr/bin/env zsh
source <(antibody init)
antibody bundle < ~/.zsh_plugins

# Spaceship Customization

SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false

SPACESHIP_EXEC_TIME_SHOW=false
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#555555'
