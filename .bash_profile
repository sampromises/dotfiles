export PS1="skim$ "

alias cdsublime="cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User"

# SSH
alias sshCMU="ssh ssk1@unix.andrew.cmu.edu"
alias sftpCMU="sftp ssk1@unix.andrew.cmu.edu"

# Spring 2018
alias cd214="cd ~/Google\ Drive/17214/ssk1/"
alias cd440="cd ~/Google\ Drive/15440/afs15440/"
alias get440="scp -r ssk1@unix.andrew.cmu.edu:/afs/andrew/course/15/440/classnotes/ ~/Google\ Drive/15440/classnotes/ "
alias get440="scp -r ssk1@unix.andrew.cmu.edu:/afs/andrew/course/15/440/classnotes/ ~/Downloads/classnotes"

alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"

# For tmux colors
export TERM="xterm-256color"

# Enable cli colors
export CLICOLOR=1

# For config backups
alias config='/usr/bin/git --git-dir=$HOME/.config/ --work-tree=$HOME'
