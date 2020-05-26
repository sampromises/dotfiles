############
# oh-myzsh #
############

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

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

bindkey '^R' history-incremental-search-backward

# Enable cli colors
export CLICOLOR=1

# Prevent brew update every time it's run
export HOMEBREW_NO_AUTO_UPDATE=1

###########
# Aliases #
###########

# youtube-dl
# Download single entry
alias youtube-dl-audio='youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0'

# Python
alias python='python3'
alias py='python'
alias pip='pip3'
alias ipy='ipython'
alias python2='python2.7'
alias py2='python2'
alias activate='test -d .venv && source ./.venv/bin/activate || echo "No venv in the current folder"'

# Django
alias pm="python3 manage.py"
alias pmrs="python3 manage.py runserver"

# Pi
alias sshpi='ssh pi@192.168.0.24'
alias sftppi='sftp pi@192.168.0.24'

# Leetcode CLI
alias lc='leetcode'
alias lcstart='leetcode show -gxe -l python'

#########
# Paths #
#########

export PATH="$HOME/bin:$PATH"

# Heroku
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
