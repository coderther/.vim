" define LEADER key as space
let mapleader=" "
" turn syntax on
syntax on
set tabstop=4
set shiftwidth=4
set autoindent
set listchars=tab:>-,trail:-
set laststatus=2
set ruler
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
" show line number
set number
" set encoding for file,terminal and buffer
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
" highlight result of search 
set hlsearch
" support mouse in vim
set mouse=a
" timely highlight of search
set incsearch
" highlight cursor line
set cul
" show relative number of line 
set relativenumber
" match like ( { 
set showmatch
" to improve paste
set paste
" ignore case
set ignorecase
" smartly to recognize case
set smartcase
" no bells for error
set noerrorbells
" to maintain cursor below or cover 5 lines
set scrolloff=5
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" auto cursor line when last exit position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" auto clear highlight search when file opens
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
map <LEADER>sc :set spell!<CR>
map Q :q!<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline' 
Plug 'connorholyday/vim-snazzy'
call plug#end()


color snazzy
