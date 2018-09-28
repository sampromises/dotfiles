# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/skim/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  osx
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

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
alias go_440_p1="export GOPATH=/Users/skim/Google_Drive/15-440-TA/Projects-Sam/P1 && cd /Users/skim/Google_Drive/15-440-TA/Projects-Sam/P1"

alias cd_437="cd ~/Google_Drive/17-437/"
alias cd_437_hw1="cd /Users/skim/Google_Drive/17-437/ssk1/homework/1"
alias cd_437_hw2="cd /Users/skim/Google_Drive/17-437/ssk1/homework/2"
alias cd_437_hw3="cd /Users/skim/Google_Drive/17-437/ssk1/homework/3"
alias cd_437_hw4="cd /Users/skim/Google_Drive/17-437/ssk1/homework/4"
alias cd_437_hw5="cd /Users/skim/Google_Drive/17-437/ssk1/homework/5"
alias cd_437_hw6="cd /Users/skim/Google_Drive/17-437/ssk1/homework/6"
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
