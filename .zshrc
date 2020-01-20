#!/bin/zsh
# zplug: https://github.com/zplug/zplug
# oh-my-zsh: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins
# awesome-zsh-plugins: https://github.com/unixorn/awesome-zsh-plugins
# for later maybe? https://github.com/psprint/zsh-navigation-tools
[ -f "$HOME/.zplug/init.zsh" ] && source ~/.zplug/init.zsh
[ -f "$HOME/.profile" ] && source "$HOME/.profile"
[ -f "$HOME/.local/bin/z.sh" ] && source "$HOME/.local/bin/z.sh"
[ -f "$HOME/.zplug/repos/hchbaw/auto-fu.zsh" ] && source "$HOME/repos/hchbaw/auto-fu.zsh.local/bin/z.sh"

if [[ ! -d ~/.zplug ]];then
    git clone https://github.com/b4b4r07/zplug ~/.zplug
fi

zplug "changyuheng/zsh-interactive-cd"
zplug "zpm-zsh/colorize"
zplug "ael-code/zsh-colored-man-pages"
zplug "zsh-users/zsh-autosuggestions"
zplug "psprint/zsh-navigation-tools"
zplug "hchbaw/auto-fu.zsh"
zplug "hlissner/zsh-autopair"
zplug "zsh-users/zsh-autosuggestions"
zplug "changyuheng/fz", defer:1
zplug "rupa/z", use:z.sh
zplug "softmoth/zsh-vim-mode"
zplug "kutsan/zsh-system-clipboard"
zplug "lib/completion", from:oh-my-zsh
zplug "lib/history", from:oh-my-zsh
zplug "zsh-vi-more/evil-registers"
zplug load


# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v
bindkey '^r' history-incremental-search-backward

export KEYTIMEOUT=1

MODE_CURSOR_VICMD="green block"
MODE_CURSOR_VIINS="#20d08a blinking bar"
MODE_CURSOR_SEARCH="#ff00ff steady underline"
MODE_INDICATOR_VIINS='%F{2}|<%F{2}I>|%f'
MODE_INDICATOR_VICMD='%F{1}|<%F{1}N>|%f'
MODE_INDICATOR_REPLACE='%F{1}|<%F{1}R>|%f'
MODE_INDICATOR_SEARCH='%F{5}|<%F{5}S>|%f'
MODE_INDICATOR_VISUAL='%F{4}|<%F{4}V>|%f'
MODE_INDICATOR_VLINE='%F{4}|<%F{4}V>|%f'
ZSH_AUTOSUGGEST_USE_ASYN=true

setopt PROMPT_SUBST
# Note the single quotes
RPS1='${vcs_info_msg_0_}'
PS1='${MODE_INDICATOR_PROMPT} %{$fg[cyan]%}%~ %{$fg[green]%}>> '
