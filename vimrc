set nocompatible

let mapleader = ","

call pathogen#infect()
syntax on
filetype plugin indent on

set number
set numberwidth=3
set textwidth=0
set nowrap
set showcmd
set showmatch
set ruler
set wildmenu
set laststatus=2
set listchars=tab:▷⋅,trail:·
set list

set background=dark
let g:solarized_termtrans=1
colorscheme solarized

set hidden
set history=1000
set autoread
set backspace=indent,eol,start
set autoindent

set ai
set ts=4
set sts=4
set sw=4
set et

set incsearch
set hlsearch
set smartcase

set nobackup
set noswapfile

set nofoldenable

if has('mouse')
  set mouse=a
endif

nmap <C-E> :b#<CR>

" NERDTree
nmap <C-\> :NERDTreeToggle<CR>
nmap <leader>p :NERDTreeFind<CR>

" NERDCommenter
nmap <leader>/ <plug>NERDCommenterToggle
vmap <leader>/ <plug>NERDCommenterToggle

" taglist
nmap <leader>t :TlistToggle<CR>

" command-t
nmap <unique> <silent> <Leader><Leader> :CommandT<CR>
nmap <unique> <silent> <Leader><Leader><Leader> :CommandTFlush<CR>:CommandT<CR>
let g:CommandTMatchWindowAtTop=1

" status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
