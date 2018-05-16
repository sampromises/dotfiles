set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

"""""""""""""""""""
" SAM VIMRC START "
"""""""""""""""""""
filetype plugin indent on " Filetype auto-detection

" https://www.reddit.com/r/vim/wiki/tabstop
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.

" Folding
"set foldcolumn=2

" My color scheme
colorscheme wombat

syntax on " Syntax highlighting
set showcmd " See commands I'm typing 
set ruler

set hlsearch " Highlight searches

set relativenumber " Show the relative line numbers around current line
" set number " Show the current line number

let g:indentLine_enabled = 1
