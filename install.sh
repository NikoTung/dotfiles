#!/bin/bash

install() {
    touch $HOME/.config/office-private.zsh

    ln -s ${PWD}/.zshrc $HOME/.zshrc 

    ln -s ${PWD}/config/dev.zsh $HOME/.config/dev.zsh 
    ln -s ${PWD}/config/office.zsh $HOME/.config/office.zsh 
    ln -s ${PWD}/config/plugins.zsh $HOME/.config/plugins.zsh 
    ln -s ${PWD}/config/starship.toml $HOME/.config/starship.toml 
}

uninstall() {
    rm $HOME/.config/office-private.zsh

    rm $HOME/.zshrc

    rm $HOME/.config/dev.zsh
    rm $HOME/.config/office.zsh
    rm $HOME/.config/plugins.zsh
    rm $HOME/.config/starship.toml

}

case "$1" in
    "install")
        install
        ;;
    "uninstall")
        uninstall
        ;;
    *)
        echo "Usage: $0 {install|uninstall}"
        ;;
esac