#!/usr/bin/env bash

set -e

# https://code.visualstudio.com/sha/download?build=stable&os=darwin-universal

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin

brew install font-fira-code-nerd-font

echo "Installing starship..."
brew install starship

echo "Installing tig ..."
brew install tig

echo "Installing zplug..."
curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh

echo "Installing eza..."
brew install eza

echo "Installing sdkman..."
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
