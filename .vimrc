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
nnoremap bp :bp<CR>
nnoremap bn :bn<CR>

let mapleader=','

map <leader>w :%s/\s\+$//e<CR>
set listchars=tab:▸\ ,trail:▪

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set tabline+=%f
set showtabline=2

call plug#begin()
Plug 'wincent/command-t'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-fugitive'
call plug#end()
