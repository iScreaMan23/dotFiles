#!/bin/sh
alias gitdot='/usr/bin/git --git-dir=$HOME/dotFiles/ --work-tree=$HOME'
alias vi="nvim"
alias sxhkdrc="vi $HOME/.config/sxhkd/sxhkdrc"

alias \
	ls='exa --color=always --group-directories-first' \
	la='exa -a --color=always --group-directories-first' \
	ll='exa -l --color=always --group-directories-first' \
	lt='exa -aT --color=always --group-directories-first' \
	grep="grep --color=auto" \
	diff="diff --color=auto" \

# These common commands are just too long! Abbreviate them.
alias \
	smci="sudo make clean install"\

# Path stuff
export PATH="$PATH:$HOME/.config/sxhkd/bin"

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export READER="zathura"
export BROWSER="firefox"
