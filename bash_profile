if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

# Git completion
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi
