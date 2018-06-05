export PS1="\w\nskim$ "

alias cdsublime="cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User"
alias edit_brc="vim ~/.bashrc"
alias edit_vrc="vim ~/.vimrc"

# SSH
alias ssh_cmu="ssh ssk1@unix.andrew.cmu.edu"
alias ssh_shark="ssh ssk1@shark.ics.cs.cmu.edu"
alias sftp_cmu="sftp ssk1@unix.andrew.cmu.edu"

# Spring 2018
alias cd214="cd ~/Google\ Drive/17214/ssk1/"
alias cd440="cd ~/Google\ Drive/15440/afs15440/"
alias get440="scp -r ssk1@unix.andrew.cmu.edu:/afs/andrew/course/15/440/classnotes/ ~/Google\ Drive/15440/classnotes/ "
alias get440="scp -r ssk1@unix.andrew.cmu.edu:/afs/andrew/course/15/440/classnotes/ ~/Downloads/classnotes"

alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"

# Enable cli colors
export CLICOLOR=1

# For config backups
alias config='/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME'

# Keep track of list of installed applications
alias backup_applist='ls /Applications/ > $HOME/.apps_list ; config add $HOME/.apps_list ; config commit -m "Update apps list" ; config push'
