#export PS1="\n\w\nskim$ "

# Enable cli colors
export CLICOLOR=1

# For tmux colors
export TERM="xterm-256color"

# Keep track of list of installed applications
alias backup_applist='ls /Applications/ > $HOME/.apps_list ; config add $HOME/.apps_list ; config commit -m "Update apps list" ; config push'

# For config backups
alias config='/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME'

# Update all config files at once (lazy)
function config_update() {
    config add -u ~/. &&
    config commit -m "Minor changes" &&
    config push
}

# youtube-dl
# Download single entry
alias youtube-dl-audio='youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0'

# For powerline
POWERLINE_PATH=~/Library/Python/2.7/lib/python/site-packages/powerline
source $POWERLINE_PATH/bindings/bash/powerline.sh
