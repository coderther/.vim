let mapleader=" "
syntax on
set number
set hlsearch
set mouse=a
set incsearch
set relativenumber
set ignorecase
set smartcase
set noerrorbells
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
exec "nohlsearch"
noremap <leader><CR> :nohlsearch<CR>

set wrap
set nocompatible
set showcmd
set wildmenu
noremap i k
noremap I 5k
noremap k j
noremap K 5j
noremap j h
noremap J 5h
noremap L 5l
noremap h i
noremap H I
map sr :set splitright<CR>:vsplit<CR>
map snr :set nosplitright<CR>:vsplit<CR>
map snb :set nosplitbelow<CR>:split<CR>
map sb :set splitbelow<CR>:split<CR>

map <LEADER>l <C-w>l
map <LEADER>k <C-w>j
map <LEADER>i <C-w>k
map <LEADER>j <C-w>h
noremap <C-j> 0
noremap <C-l> $
map S :w<CR>
map ; :
map Q :q!<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>



map R :source $MYVIMRC<CR>
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline' 
Plug 'connorholyday/vim-snazzy'
call plug#end()


color snazzy
