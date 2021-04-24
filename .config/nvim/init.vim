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
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/gv.vim'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim'
Plug 'mattn/emmet-vim'
Plug 'rbgrouleff/bclose.vim' " mandatory dependency to ranger.vim
Plug 'francoiscabrol/ranger.vim'
Plug 'easymotion/vim-easymotion'
Plug 'jiangmiao/auto-pairs'
Plug 'matze/vim-move'
Plug 'jpalardy/vim-slime'
Plug 'machakann/vim-highlightedyank'
Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
Plug 'wincent/scalpel'
Plug 'itspriddle/vim-shellcheck'
Plug 'airblade/vim-gitgutter'
Plug 'kshenoy/vim-signature'
Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css','scss', 'json', 'markdown', 'yaml', 'html'] }
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'turbio/bracey.vim'

" Dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'natebosch/dartlang-snippets'

" Themes
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lilydjwg/colorizer'

call plug#end()

let g:onedark_color_overrides = {
\ "black": {"gui": "#21222c", "cterm": "235", "cterm16": "0" },
\ "purple": { "gui": "#C678DF", "cterm": "170", "cterm16": "5" }
\}

" Plugins Customizations
colorscheme onedark
let g:airline_theme = 'onedark'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:move_key_modifier = 'S'
let g:limelight_conceal_ctermfg = 'gray'
let g:highlightedyank_highlight_duration = 500
let g:indentLine_char_list = ['|', '┊', '┆', '¦']
set termguicolors
let g:vim_markdown_folding_disabled = 1

" Dart Configs
let g:lsc_auto_map = v:true
let dart_html_in_string = v:true
let g:dart_style_guide = 2
let g:dart_format_on_save = 1
"-------------------------------------------------------------------------------
" Global Editor Configs

set nocompatible
filetype on
syntax enable
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
set mouse=a
set colorcolumn=80

au! BufWritePost $MYVIMRC source %
"-------------------------------------------------------------------------------
" CoC

set updatetime=300
set shortmess+=c
set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

let g:coc_snippet_next = '<tab>'

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent><C-k> :call <SID>show_documentation()<CR>

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

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)

xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"

nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

command! -nargs=0 Format :call CocAction('format')

command! -nargs=? Fold :call     CocAction('fold', <f-args>)

command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
"-------------------------------------------------------------------------------
" Remappings

nmap <C-r> :redo<CR>

nmap <C-k> <C-w>k
nmap <C-j> <C-w>j
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

nmap <F5> :source ~/.config/nvim/init.vim<CR>

nnoremap <SPACE> <Nop>
let g:mapleader = "\<Space>"
nmap <leader>w <cmd>w!<CR>
nmap <leader>q <cmd>q!<CR>
nmap <leader>wq <cmd>wq!<CR>
nmap <leader>n <cmd>NERDTreeToggle<CR>
nmap <leader>v <cmd>vs<CR>
nmap <leader>h <cmd>sp<CR>
nmap <leader>o o<Esc>k
nmap <leader>O O<Esc>j
nmap <leader>P <cmd>Prettier<CR>
nmap <leader>nh <cmd>noh<CR>

nmap [b :bnext<CR>
nmap ]b :bprevious<CR>

nmap <A-f> :Files<CR>
nmap <A-r> :Rg<CR>
nmap <A-l> :Lines<CR>
nmap <A-b> :Buffers<CR>

nnoremap c* *Ncgn

nnoremap <S-Del> a<Del><Esc>
nnoremap <S-BS> i<BS><Esc>`^

cnoremap vimrc e /home/philippe/.config/nvim/init.vim
cnoremap bashrc e /home/philippe/.bashrc
cnoremap xmonadrc e /home/philippe/.xmonad/xmonad.hs

nnoremap gJ gJi <Esc>
"-------------------------------------------------------------------------------
