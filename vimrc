"""""""""""""""""""""
" junegunn/vim-plug "
"""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
call plug#end()

"""""""""""""""""""
" SAM VIMRC START "
"""""""""""""""""""
filetype plugin indent on " Filetype auto-detection

" https://www.reddit.com/r/vim/wiki/tabstop
set tabstop=4
set shiftwidth=4
set expandtab " use spaces instead of tabs.

set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" My color scheme
colorscheme onedark

syntax on " Syntax highlighting
set showcmd " See commands I'm typing 
set ruler " Show ruler in status bar
set cursorline " Highlight current row
set backspace=indent,eol,start " So backspace works like normal

" Search settings
set hlsearch " Highlight searches
nnoremap <esc><esc> :silent! nohls<cr>
set incsearch " Incremental search, like a browser search
set relativenumber " Show the relative line numbers around current line
set number " Show the current line number

" Show tab-completion list
set wildmode=longest:full,list

" System clipboard copy/paste
set clipboard=unnamed

" SPLITS
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" GitGutter
autocmd BufWritePost * GitGutter  " Update on save

" fzf
let g:fzf_preview_window = 'right:60%'
nnoremap <c-p> :Files<cr>
