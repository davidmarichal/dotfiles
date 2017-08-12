" General
set nocompatible

set encoding=utf8
set ffs=unix,mac,dos
set backspace=eol,indent,start
set nobackup
set undofile
set undodir=/tmp

execute pathogen#infect()

filetype indent plugin on

let mapleader=","
let g:mapleader=","

" User Interface
set hlsearch
set ignorecase
set incsearch
set ruler
set showmatch
set smartcase
set title
set wildmode=longest,list,full
set wildmenu

" Colors
syntax on
colorscheme molokai

" Spaces & Tabs
set autoindent
set expandtab
set list
set listchars=eol:¬,tab:—·,trail:·
set modelines=1
set smarttab
set shiftwidth=4
set softtabstop=4

" Keybindings
map   <space> /
map <c-space> ?

nmap <tab>   :bnext    <cr>
nmap <s-tab> :bprevious<cr>

" Layout
set cursorline
set nowrap
set number
set relativenumber

" Plugins ------------------------------------------------"
" scrooloose/nerdtree
map <leader>1 :NERDTreeToggle<cr>
