
alias sc="source $HOME/.zshrc"  # reload zsh configuration


setopt histignorealldups sharehistory

# Keep 5000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

source $HOME/.config/dev.zsh
source $HOME/.config/plugins.zsh
source $HOME/.config/office.zsh

# starship prompt
eval "$(starship init zsh)"