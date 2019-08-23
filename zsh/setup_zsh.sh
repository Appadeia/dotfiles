#!/usr/bin/env zsh

CLEAR=$(tput sgr0)
MAGENTA=$(tput setaf 5)

[[ ! -a /usr/local/bin/antibody ]] && curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/sbin

curl -sfL https://raw.githubusercontent.com/Appadeia/dotfiles/master/zsh/.zshrc > $HOME/.zshrc
curl -sfL https://raw.githubusercontent.com/Appadeia/dotfiles/master/zsh/.zsh_plugins > $HOME/.zsh_plugins

echo "${MAGENTA}Successfully installed fish-like zsh!${CLEAR}"
