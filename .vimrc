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
colorscheme wombat256mod

syntax on " Syntax highlighting
set showcmd " See commands I'm typing 
set ruler " Show ruler in status bar

" Ruler at column 80
highlight ColorColumn ctermbg=gray
set colorcolumn=80

" Highlight current row
set cursorline " By itself, just an underline
hi cursorline cterm=none term=none
highlight CursorLine guibg=#303000 ctermbg=234

set hlsearch " Highlight searches

set relativenumber " Show the relative line numbers around current line
set number " Show the current line number

" Set window title to filename
set title

" Auto-complete brackets
inoremap { {<CR>}<Esc>ko

" Map U to redo, opposite of u(ndo)
nnoremap U <C-r>
