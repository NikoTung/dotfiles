# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"


# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

#

# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gst="git status"
alias gco="git checkout"
alias gcm="git checkout master"
alias gpull="git pull origin"
alias gpush="git push origin"
alias gbranch="git checkout -b"
alias gclone="git clone"


# Customise the Powerlevel9k prompts
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(
  custom_apple dir vcs newline status
)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# Add the custom apple icon prompt segment
POWERLEVEL9K_CUSTOM_APPLE="echo -n $'\uf302'"
POWERLEVEL9K_CUSTOM_APPLE_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_APPLE_BACKGROUND="white"
# Load Nerd Fonts with Powerlevel9k theme for Zsh

POWERLEVEL9K_MODE='nerdfont-complete'
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

. /usr/local/bin/z.sh

# flutter

export PATH="$PATH:$HOME/dev/flutter/bin"

# android sdk
export ANDROID_HOME="$HOME/dev/android-sdk"

# jdk
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_12_HOME=$(/usr/libexec/java_home -v12)

export JAVA_HOME=$JAVA_8_HOME
