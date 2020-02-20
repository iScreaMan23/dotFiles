#!/usr/bin/env zsh

[ -f "$HOME/.profile" ] && source "$HOME/.profile"

if [[ ! -f ~/.zpm/zpm.zsh ]]; then
  git clone https://github.com/zpm-zsh/zpm ~/.zpm
fi
# source ~/.zpm/zpm.zsh
