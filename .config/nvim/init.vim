"-------------------------------------------------------------------------------
" Plugins & Themes

call plug#begin('~/.config/nvim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'

Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

colorscheme onedark
let g:airline_theme='onedark'
let g:airline#extensions#tabline#enabled = 1
"-------------------------------------------------------------------------------
" Global Editor Configs

set nocompatible
filetype on
syntax on
set number
set hlsearch
set incsearch
set relativenumber
set splitbelow splitright
set nocompatible
set wildmenu
set hidden
set history=500
set bg=dark
set clipboard=unnamedplus
set shiftwidth=2
set tabstop=2
set expandtab
set list
set ruler
set showcmd
set scrolloff=5
set lbr
set ai
set si
"-------------------------------------------------------------------------------
" Remappings

nmap <C-k> <C-w>k
nmap <C-j> <C-w>j
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l
nmap <leader>w :w!<CR>
"-------------------------------------------------------------------------------
