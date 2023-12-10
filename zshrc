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
  macos
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
# https://unix.stackexchange.com/a/328536
#alias youtube-dl="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4'"
# Download single entry
alias youtube-dl-audio='youtube-dl -i --extract-audio --audio-format mp3 --audio-quality 0'

# Python
alias py='python3'
alias ipy='python3 -m ipython'
alias source_env='if [ ! -f .env ]; then source .env; else ; fi'
alias activate='test -d .venv && source ./.venv/bin/activate || echo "No venv in the current folder" && source_env'
alias fr_dev='FLASK_ENV=development FLASK_SECRET_KEY=secretkey flask run'

# Django
alias pm="python manage.py"
alias pmrs="python manage.py runserver"

#########
# Paths #
#########

export PATH="$PATH:$HOME/bin:/opt/homebrew/bin:$HOME/Library/Python/3.8/lib/python/site-packages"

#  npm global
export PATH=~/.npm-global/bin:$PATH


# Heroku
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Go
export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"

# CDK
alias cdk_push='cdk synth && cdk deploy --require-approval never'

alias grbiom='git rebase -i origin/mainline'

export AWS_ACCOUNT_ID='316936913708'
export AWS_ACCOUNT_REGION='us-west-1'


# (The below instructions are intended for common
# shell setups. See the README for more guidance
# if they don't apply and/or don't work for you.)

# Add pyenv executable to PATH and
# enable shims by adding the following
# to ~/.profile and ~/.zprofile:

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export PATH=$PATH:/opt/homebrew/bin/gradle:/usr/local/git/bin

# Load pyenv into the shell by adding
# the following to ~/.zshrc:

eval "$(pyenv init -)"

alias rsvps='cd /Users/skim/ws/tee-times-lambda && source .venv/bin/activate && source .env && py src/reservations && open reservations.html'

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/skim/.sdkman"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
