set nocompatible

let mapleader = ","

call pathogen#infect()
syntax on
filetype plugin indent on

set gfn=Inconsolata\ Medium\ 15
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
set so=5
set siso=10
set guioptions-=T " remove toolbar
set guioptions-=m " remove menu

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

set ignorecase
set smartcase
set incsearch
set hlsearch

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
nmap <leader>tl :TlistToggle<CR>

" generate tags
map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>

" command-t
nmap <unique> <silent> <Leader><Leader> :CommandT<CR>
nmap <unique> <silent> <Leader><Leader><Leader> :CommandTFlush<CR>:CommandT<CR>
let g:CommandTMatchWindowAtTop=1

" status line
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" paste toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" copy/paste stuff
nmap <C-V> <F2>"+gP<F2>
imap <C-V> <ESC><C-V>i
vmap <C-C> "+y

