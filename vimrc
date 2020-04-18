"""""""""""""""""""""
" junegunn/vim-plug "
"""""""""""""""""""""

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
" Plug 'fatih/vim-go'
" Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'w0rp/ale'
Plug 'qpkorr/vim-renamer'
Plug 'pangloss/vim-javascript'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"""""""""""""""""""
" SAM VIMRC START "
"""""""""""""""""""
filetype plugin indent on " Filetype auto-detection

" https://www.reddit.com/r/vim/wiki/tabstop
set tabstop=4 " Changed from 8 to 4 for better Go compatibility
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.

set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" Folding
set foldcolumn=0

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

" Map U to redo, opposite of u(ndo)
nnoremap U <C-r>

" Show tab-completion list
set wildmode=longest:full,list

" System clipboard copy/paste
set clipboard=unnamed

" FOLDING
set foldmethod=syntax
set foldnestmax=10
set nofoldenable

" SPLITS
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" NERDTree Toggle
map <C-\> :NERDTreeToggle<CR>

nnoremap <C-_> <C-o>:call NERDComment(0,"toggle")<C-m>
vnoremap <C-_> <C-o>:call NERDComment(0,"toggle")<C-m>
inoremap <C-_> <C-o>:call NERDComment(0,"toggle")<C-m>

" Run python
nnoremap <buffer> <F5> :exec '!python3' shellescape(@%, 1)<cr>
