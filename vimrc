set nocompatible
set autoread
set backspace=indent,eol,start
set clipboard=unnamed,unnamedplus
set encoding=utf8
set hidden
set nowrap
set number
set term=xterm-256color
set wildmenu wildmode=longest:full,full

filetype plugin indent on
set list listchars=trail:•,tab:>-
set scrolloff=10
set showbreak=¬\
set showmatch
syntax on
set bg=dark
colorscheme gruvbox
hi Normal guibg=NONE ctermbg=NONE
set laststatus=2
set statusline=%F%m%r%h%w\ \|\ encoding:%{&fenc}\ \|\%=%(\|\ length:%L\ \|\ lin:%l\ \|\ col:%c\ %)

set autoindent expandtab
set shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType yaml,yml setlocal ts=2 sts=2 sw=2 expandtab

set hlsearch ignorecase incsearch smartcase

set history=500
set nobackup noswapfile nowritebackup
set undofile undodir=~/.vim/undo undolevels=9999

set splitbelow splitright

set lazyredraw
set nocursorline
set ttyfast

let mapleader=','
map <leader>w :w<CR>
map <leader>q :q<CR>
map <space> /

set cc=99
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey

autocmd BufWritePre * :%s/\s\+$//e
