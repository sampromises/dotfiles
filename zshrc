############
# oh-myzsh #
############

# Path to your oh-my-zsh installation.
export ZSH="/Users/skim/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="refined"
ZSH_THEME="avit"
#ZSH_THEME="robbyrussell"

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

bindkey '^R' history-incremental-search-backward

################
# from .basrhc #
################

# Local aliases
alias cd_sublime="cd ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User"
alias zrc="vim ~/.zshrc"
alias vrc="vim ~/.vimrc"

# SSH
alias ssh_cmu="ssh ssk1@unix7.andrew.cmu.edu"
alias ssh_shark="ssh ssk1@shark.ics.cs.cmu.edu"
alias sftp_cmu="sftp ssk1@unix7.andrew.cmu.edu"

# Spring 2018
alias get_440="scp -r ssk1@unix7.andrew.cmu.edu:/afs/andrew/course/15/440/classnotes/ ~/Documents/15-440/classnotes"

alias 437_db='python3 manage.py dbshell'
alias 437_redis='redis-server /usr/local/etc/redis.conf &'

alias j9="export JAVA_HOME=`/usr/libexec/java_home -v 9`; java -version"
alias j8="export JAVA_HOME=`/usr/libexec/java_home -v 1.8`; java -version"

# Enable cli colors
export CLICOLOR=1

# For tmux colors
export TERM="xterm-256color-italic"

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

# Python
alias ipy='ipython'
alias py='python3'
alias py2='python'

# Capstone project
alias go_pool='cd ~/ws/pool/ && source venv/bin/activate'
alias go_500='cd ~/ws/500/ && source venv/bin/activate'

# 440
alias go_440='ssh_cmu 440_p3'
alias go_ctci='cd /Users/skim/ws/Interview-Prep/CTCI'