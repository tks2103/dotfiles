execute pathogen#infect()

set nocompatible
filetype off
filetype plugin indent on


set tabstop=2
set shiftwidth=2
set expandtab
set number

syntax enable
set background=dark
colorscheme solarized

nnoremap tn :tabn<CR>
nnoremap tp :tabp<CR>
nnoremap te :tabe<Space>

let mapleader=','

map <leader>w :%s/\s\+$//e<CR>
set listchars=tab:▸\ ,trail:▪

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
