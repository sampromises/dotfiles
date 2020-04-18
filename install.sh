#!/bin/sh

FILES=(
    hammerspoon
    gitignore_global
    rc
    tmux.conf
    tmux.conf.local
    vim
    vimrc
    zshrc
    oh-my-zsh/custom
)

##
# Link
##
function link() {
    for f in ${FILES[@]}; do
        echo "Linking ${f}...\c"
        ln -sf $(pwd)/${f} ~/.${f}
        echo "done"
    done
}

##
# Unlink
##
function unlink() {
    for f in ${FILES[@]}; do
        if [[ -L ~/.${f} ]]; then
            echo "Removing symlink ${f}...\c"
            rm -rf ~/.${f}
            echo "done"
        fi
    done
}

##
# Parse option
##
case $1 in
    -l | --link)
        link
        exit
        ;;
    -u | --unlink)
        unlink
        exit
        ;;
esac

printf "Usage: $0 [--link|--unlink]\n"
exit 1
