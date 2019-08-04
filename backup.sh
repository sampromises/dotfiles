#!/bin/sh

BACKUP_LOCATION=".pre_make_backups"

FILES=(
    bashrc
    bash_profile
    gitignore_global
    tmux.conf
    vim
    vimrc
    zshrc
)

##
# Backup
function backup() {
    if [[ -d ${BACKUP_LOCATION} ]]; then
        printf "Backup folder already exists at ${BACKUP_LOCATION}. Exiting.\n"
        exit 1
    else
        mkdir ${BACKUP_LOCATION}

        printf "Creating backups... "

        for f in ${FILES[@]}; do
            cp -r ~/.${f} ${BACKUP_LOCATION}/${f}
        done

        printf "Done Backups created at ${BACKUP_LOCATION}\n"
    fi
}


##
# Restore
##
function restore() {
    if [[ -d ${BACKUP_LOCATION} ]]; then
        printf "Restoring backups... "

        for f in ${FILES[@]}; do
            cp -r ${BACKUP_LOCATION}/${f} ~/.${f}
        done

        printf "Done\n"
    else
        printf "Backup folder does not exist at ${BACKUP_LOCATION}. Exiting.\n"
        exit 1
    fi
}


##
# Link
##
function link() {
    for f in ${FILES[@]}; do
        if [[ -f ~/.${f} || -d ~/.${f} ]]; then
            rm -rf ~/.${f}
        fi

        ln -s $(pwd)/${f} ~/.${f}
    done
}


##
# Unlink
##
function unlink() {
    for f in ${FILES[@]}; do
        if [[ -L ~/.${f} ]]; then
            rm -rf ~/.${f}
        fi
    done
}


##
# Parse option
##
case $1 in
    -b | --backup)
        backup
        exit
        ;;
    -r | --restore)
        restore
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

printf "Usage: $0 [--backup|--restore|--link|--unlink]\n"
exit 1
