"""""""""""""""""""""
" junegunn/vim-plug "
"""""""""""""""""""""

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'
Plug 'fatih/vim-go'
Plug 'jiangmiao/auto-pairs'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"""""""""""""""""""
" SAM VIMRC START "
"""""""""""""""""""
filetype plugin indent on " Filetype auto-detection

" https://www.reddit.com/r/vim/wiki/tabstop
set tabstop=4 " Changed from 8 4o 4 for better Go compatibility
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
colorscheme wombat256mod

syntax on " Syntax highlighting
set showcmd " See commands I'm typing 
set ruler " Show ruler in status bar

" Ruler at column 80
"highlight ColorColumn ctermbg=gray
"set colorcolumn=80

" Search settings
set hlsearch " Highlight searches
set incsearch " Incremental search, like a browser search

set relativenumber " Show the relative line numbers around current line
set number " Show the current line number

" Map U to redo, opposite of u(ndo)
nnoremap U <C-r>

" Show tab-completion list
set wildmode=longest:full,list

" Quickly save file (update will write iff file changed)
nnoremap zz :update<CR>


" Shortcuts to jump around errors in quickfix list
map <C-n> :cnext<CR>
map <C-p> :cprevious<CR>
nnoremap <leader>q :cclose<CR>

"""""""""""""""""""
" NEED FOR VIM-GO "
"""""""""""""""""""

" Make sure all lists in are 'quickfix' instead of 'location list'
let g:go_list_type = "quickfix"

" Shortcuts to quickly build and run Go program
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)
