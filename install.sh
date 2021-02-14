#!/bin/sh

FILES=(
    hammerspoon
    gitconfig
    gitignore_global
    rc
    tmux.conf
    tmux.conf.local
    vim/colors
    vim/autoload
    vimrc
    zshrc
    oh-my-zsh/custom
)

##
# Preinstall
##
function preinstall() {
    echo "Installing oh-my-zsh..."
    install
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Installing vim plug..."
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

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
    -p | --preinstall)
        preinstall
        exit
        ;;
    -l | --link)
        link
        exit
        ;;
    -u | --unlink)
        unlink
        exit
        ;;
esac

printf "Usage: $0 [--preinstall}--link|--unlink]\n"
exit 1
