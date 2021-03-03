"-------------------------------------------------------------------------------
" Plugins & Themes

call plug#begin('~/.config/nvim/plugged')

" Editor
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'mattn/emmet-vim'
Plug 'rbgrouleff/bclose.vim' " mandatory dependency to ranger.vim
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lilydjwg/colorizer'

call plug#end()

" Plugins Customizations
colorscheme onedark
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1
"-------------------------------------------------------------------------------
" Global Editor Configs

set nocompatible
filetype on
syntax on
set hlsearch
set incsearch
set number
set relativenumber
set splitbelow splitright
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
nmap <F5> :source ~/.config/nvim/init.vim<CR>
nmap <leader>w :w!<CR>
nmap <leader>q :q!<CR>
nmap <leader>wq :wq!<CR>
nmap <leader>N :NERDTree<CR>
nmap <leader>n :FZF<CR>
"-------------------------------------------------------------------------------
" Coc

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
"-------------------------------------------------------------------------------
