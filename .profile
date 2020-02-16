#!/bin/sh

# Path stuff
export PATH="$PATH:$HOME/.config/sxhkd/bin:$HOME/bin"
export NVIMPATH="$HOME/.config/nvim"

alias gitdot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias vi="nvim"
alias sxhkdrc="vi ~/.config/sxhkd/sxhkdrc"
alias bspwmrc="vi ~/.config/bspwm/bspwmrc"
alias vimrc="vi $NVIMPATH/init.vim $NVIMPATH/plugin.vim $NVIMPATH/autocmd.vim"
alias profile="vi ~/.profile"
alias config="vi ~/.config"

alias \
	ls='exa --color=always --group-directories-first' \
	la='exa -a --color=always --group-directories-first' \
	ll='exa -l --color=always --group-directories-first' \
	lt='exa -aT --color=always --group-directories-first' \
	grep="grep --color=auto" \
	diff="diff --color=auto" \

alias \
	gp='git push origin master' \
	gi='git init' \
	g='git ' \
	gb='git branch' \
	gc='git checkout ' \
	ga='git add ' \
	gcm='git commit -m' \
	gca='git commit --amend' \
	gf='git fetch' \

# These common commands are just too long! Abbreviate them.
alias \
	smci="sudo make clean install"\

# Default programs:
export EDITOR="nvim"
export TERMINAL="st"
export READER="zathura"
export BROWSER="firefox"

cdls() { cd "$@"&& ls; }
alias cd='cdls'
