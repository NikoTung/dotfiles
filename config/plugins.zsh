
# zplug - manage plugins
source ~/.zplug/init.zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", as:plugin
zplug "zsh-users/zsh-completions"
#zplug "plugins/tig", from:oh-my-zsh
zplug "MenkeTechnologies/zsh-tig-plugin"
zplug "agkozak/zsh-z"
zplug "z-shell/zsh-eza"

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# zplug - install/load new plugins when zsh is started or reloaded
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load
