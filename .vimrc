" General
set nocompatible

set encoding=utf8
set ffs=unix,mac,dos
set backspace=eol,indent,start

execute pathogen#infect()

filetype indent plugin on

let mapleader=","
let g:mapleader=","

" User Interface
set hlsearch
set ignorecase
set ruler
set smartcase

" Colors
syntax on

if $COLORTERM == "truecolor"
    set t_Co=256
endif

try
    colorscheme molokai
catch
endtry

" Spaces & Tabs
set autoindent
set expandtab
set modelines=1
set smarttab
set shiftwidth=4
set softtabstop=4

" Keybindings
map   <space> /
map <c-space> ?

map <tab>   :bnext    <cr>
map <s-tab> :bprevious<cr>

" Layout
set cursorline
set nowrap
set number
set relativenumber

" Plugins

" scrooloose/nerdtree
map <leader>1 :NERDTreeToggle<cr>

" vim-airline/vim-airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" c++
let g:syntastic_cpp_check_header=1

" java
let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_classpath=$ANDROID_HOME.'/platforms/android-26/*.jar'
