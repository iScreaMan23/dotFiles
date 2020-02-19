#!/usr/bin/env zsh
# Plugins
	# zplug					https://github.com/zplug/zplug
	# oh-my-zsh				https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins
	# awesome-zsh-plugins	https://github.com/unixorn/awesome-zsh-plugins
	# for later maybe? 		https://github.com/psprint/zsh-navigation-tools

# Source aliases and export PATHs
 [ -f "$HOME/.profile" ] && source "$HOME/.profile"

 # zpm: plugin manager
 if [[ ! -f ~/.zpm/zpm.zsh ]]; then
   git clone https://github.com/zpm-zsh/zpm ~/.zpm
 fi
 source ~/.zpm/zpm.zsh

 ### Core
 zpm if ssh     \
   zpm-zsh/tmux \


 zpm if-not ssh            \
   zpm-zsh/tmux,apply:path \


 ### Compatibility
 zpm if termux          \
   zpm-zsh/termux,async \

   #xfxr/forgit,async								   \
 #zsh-vi-more/evil-registers,async				   \
 ### 3party plugins
 zpm                                                \
   zpm-zsh/core-config                              \
   zpm-zsh/ignored-users,async                      \
   zpm-zsh/check-deps                               \
   zpm-zsh/ls,async                                 \
   zpm-zsh/minimal-theme                            \
   zpm-zsh/colorize,async                           \
   zpm-zsh/ssh,async                                \
   zpm-zsh/dot,async                                \
   zpm-zsh/background,async						   \
   zpm-zsh/dircolors-material,async                 \
   zpm-zsh/undollar,async                           \
   zsh-users/zsh-completions,apply:fpath,fpath:/src \
   ael-code/zsh-colored-man-pages				   \
   softmoth/zsh-vim-mode,async					   \

 zpm if-not ssh                                                                         \
   lukechilds/zsh-better-npm-completion,async                                           \
   tj/git-extras,source:/etc/git-extras-completion.zsh,async                            \
   horosgrisa/utils,apply:path                                                          \
                                                                                        \
   zpm-zsh/readers,async                                                                \
   zpm-zsh/clipboard,async                                                              \
   zpm-zsh/mysql-colorize,async                                                         \
   zpm-zsh/zshmarks,async                                                               \
   voronkovich/gitignore.plugin.zsh,async                                               \
   zpm-zsh/autoenv,async                                                                \
                                                                                        \
   mdumitru/fancy-ctrl-z,async                                                          \
   hlissner/zsh-autopair,async                                                          \
   zthxxx/zsh-history-enquirer,async                                                    \
   zsh-users/zsh-history-substring-search,source:zsh-history-substring-search.zsh,async \
   psprint/zsh-navigation-tools														   \
   zdharma/fast-syntax-highlighting,async                                               \
   horosgrisa/zsh-autosuggestions,source:zsh-autosuggestions.zsh,async                  \

 zpm                           \
   omz/pip,async               \
   omz/extract,async           \
   omz/command-not-found,async \
   omz/wp-cli,async            \

# export PS1="%d %% "
if [[ $UID -eq 0 ]]; then
    local user_host='%{$terminfo[bold]$fg[red]%}%n@%m %{$reset_color%}'
    local user_symbol='#'
else
    local user_host='%{$terminfo[bold]$fg[green]%}%n@%m %{$reset_color%}'
    local user_symbol='$'
fi

local current_dir='%{$terminfo[bold]$fg[blue]%}%~ %{$reset_color%}'
local git_branch='$(git_prompt_info)'
local rvm_ruby='$(ruby_prompt_info)'
local venv_prompt='$(virtualenv_prompt_info)'

# PS1=">>"
# PROMPT="╭─${user_host}${current_dir}${rvm_ruby}${git_branch}${venv_prompt}
# ╰─%B${user_symbol}%b "

 if [[ -f ~/.zshrc.local ]]; then
   source ~/.zshrc.local
 fi
