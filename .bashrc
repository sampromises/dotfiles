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
alias cd_440="cd ~/Google_Drive/15-440-TA/"
alias cd_440_website="cd ~/Google_Drive/15-440-TA/15-440-Main"
alias cd_440_shared="cd ~/Google_Drive/15-440-TA/2018.Fall.15440"

alias cd_437="cd ~/Google_Drive/17-437/"
alias cd_437_hw1="cd /Users/skim/Google_Drive/17-437/ssk1/homework/1"
alias cd_437_hw2="cd /Users/skim/Google_Drive/17-437/ssk1/homework/2"
alias cd_437_hw3="cd /Users/skim/Google_Drive/17-437/ssk1/homework/3"
alias cd_437_hw4="cd /Users/skim/Google_Drive/17-437/ssk1/homework/4"
alias cd_437_hw5="cd /Users/skim/Google_Drive/17-437/ssk1/homework/5"
alias cd_437_hw6="cd /Users/skim/Google_Drive/17-437/ssk1/homework/6"

alias cd_220="cd ~/Google_Drive/18-220/"
alias cd_290="cd ~/Google_Drive/18-290/"
alias cd_452="cd ~/Google_Drive/18-452/"

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

# youtube-dl
# Download single entry
alias youtube-dl-audio='youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0'

# For powerline
POWERLINE_PATH=~/Library/Python/2.7/lib/python/site-packages/powerline
source $POWERLINE_PATH/bindings/bash/powerline.sh
