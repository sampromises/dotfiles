#export PS1="\n\w\nskim$ "

# Local aliases
alias cd_sublime="cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User"
alias edit_brc="vim ~/.bashrc"
alias edit_vrc="vim ~/.vimrc"

# SSH
alias ssh_cmu="ssh ssk1@unix.andrew.cmu.edu"
alias ssh_shark="ssh ssk1@shark.ics.cs.cmu.edu"
alias sftp_cmu="sftp ssk1@unix.andrew.cmu.edu"

# Spring 2018
alias get_440="scp -r ssk1@unix.andrew.cmu.edu:/afs/andrew/course/15/440/classnotes/ ~/Google\ Drive/15440/classnotes/ "

# Fall 2018
alias cd_440="cd ~/Google_Drive/440-F17/"

alias cd_p0="cd /Users/skim/Google_Drive/440-F17/P0"
alias go_p0="export GOPATH=/Users/skim/Google_Drive/440-F17/P0 && cd_p0"

alias cd_p1="cd /Users/skim/Google_Drive/440-F17/P1"
alias go_p1="export GOPATH=/Users/skim/Google_Drive/440-F17/P1 && cd /Users/skim/Google_Drive/440-F17/P1/src/github.com/cmu440/bitcoin && git pull"
alias p1_cp1="~/Google_Drive/440-F17/P1/sh/run_test_checkpoint1.sh"
alias p1_cp2="~/Google_Drive/440-F17/P1/sh/run_test_checkpoint2.sh"
alias p1_tests="~/Google_Drive/440-F17/P1/tests_progress.sh"

alias cd_p2="cd /Users/skim/Google_Drive/440-F17/P2"
alias go_p2="export GOPATH=/Users/skim/Google_Drive/440-F17/P2 && cd /Users/skim/Google_Drive/440-F17/P2"

alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"

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

# For powerline
POWERLINE_PATH=~/Library/Python/2.7/lib/python/site-packages/powerline
source $POWERLINE_PATH/bindings/bash/powerline.sh
