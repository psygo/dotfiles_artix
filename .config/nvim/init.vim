"-------------------------------------------------------------------------------
" Plugins & Themes

call plug#begin('~/.config/nvim/plugged')

" Editor
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim'
Plug 'mattn/emmet-vim'
Plug 'rbgrouleff/bclose.vim' " mandatory dependency to ranger.vim
Plug 'francoiscabrol/ranger.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'

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
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:move_key_modifier = 'S'
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
set backspace=indent,eol,start
set complete-=i
set smarttab
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
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>v :vs<CR>
nmap <leader>h :sp<CR>
nmap <leader>o o<Esc>k
nmap <leader>O O<Esc>j

nmap [b :bnext<CR>
nmap ]b :bprevious<CR>

map <C-n> :Files<CR>
map <C-l> :Lines<CR>

nnoremap c* *Ncgn
"-------------------------------------------------------------------------------
" CoC

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

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <leader>rn <Plug>(coc-rename)

command! -nargs=0 Format :call CocAction('format')
"-------------------------------------------------------------------------------
