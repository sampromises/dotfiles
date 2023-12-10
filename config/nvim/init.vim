" https://www.reddit.com/r/vim/wiki/tabstop
set tabstop=4
set shiftwidth=4
set expandtab " use spaces instead of tabs.

set shiftround " tab / shifting moves to closest tabstop.

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

" Search settings
nnoremap <esc><esc> :silent! nohls<cr>
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
