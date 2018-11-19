############
# oh-myzsh #
############

# Path to your oh-my-zsh installation.
export ZSH="/Users/skim/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
ZSH_THEME_RANDOM_CANDIDATES=(
    "af-magic"
    "avit"
    "kardan"
    "miloshadzic"
    "minimal"
    "simple"
    "wezm"
)

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
  extract
  colored-man-pages
  jump
)

source $ZSH/oh-my-zsh.sh

##############
# zsh config #
##############

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Zsh aliases
 alias zsh_config="vim ~/.zshrc"
 alias zsh_update="source ~/.zshrc"
 alias ohmyzsh="cd ~/.oh-my-zsh"

bindkey -v # Vim keybindings on command line
bindkey '^R' history-incremental-search-backward

################
# from .basrhc #
################

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
alias 440="cd ~/Google_Drive/15-440-TA/"
alias 440_website="cd ~/Google_Drive/15-440-TA/15-440-Main"
alias 440_shared="cd ~/Google_Drive/15-440-TA/2018.Fall.15440"
alias go_440_p1="export GOPATH=/Users/skim/Google_Drive/15-440-TA/Projects-Sam/P1 && cd /Users/skim/Google_Drive/15-440-TA/Projects-Sam/P1"
alias go_440_p2="cd /Users/skim/Google_Drive/15-440-TA/Projects-Sam/P3 && export GOPATH=/Users/skim/Google_Drive/15-440-TA/Projects-Sam/P3 && cd /Users/skim/Google_Drive/15-440-TA/Projects-Sam/P3/src/github.com/cmu440/raft"

alias 437_ssk1="cd ~/Google_Drive/17-437/ssk1"
alias 437_Team26="cd ~/Google_Drive/17-437/Team26"
alias 437_hw1="cd /Users/skim/Google_Drive/17-437/ssk1/homework/1"
alias 437_hw2="cd /Users/skim/Google_Drive/17-437/ssk1/homework/2"
alias 437_hw3="cd /Users/skim/Google_Drive/17-437/ssk1/homework/3"
alias 437_hw4="cd /Users/skim/Google_Drive/17-437/ssk1/homework/4"
alias 437_hw5="cd /Users/skim/Google_Drive/17-437/ssk1/homework/5"
alias 437_hw6="cd /Users/skim/Google_Drive/17-437/ssk1/homework/6"
alias 437_migrate='python3 manage.py makemigrations && python3 manage.py migrate'
alias 437_server='python3 manage.py runserver'

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

# Prevent brew update every time it's run
export HOMEBREW_NO_AUTO_UPDATE=1

# Use bin vim
alias vim='/usr/local/bin/vim'
