" vim:fdm=marker

set nocompatible

" settings {{{

" syntax highlighting {{{
set t_Co=256
syntax on
colorscheme molokai
" }}}

" vim directories {{{
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo
" }}}

" cycle between buffers {{{
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
" }}}

" misc {{{
set autoindent
set backspace=indent,eol,start
set cursorline
set foldenable
set foldmethod=syntax
set gdefault
set hlsearch
set laststatus=2
set nu
set rnu
set shiftwidth=2
set smarttab
set title
set undofile
set nowrap
" }}}

" remap :W to :w {{{
command! W w
" }}}

" toggle show tabs and trailing spaces {{{
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>
" }}}

" insert newline {{{
map <leader><Enter> o<Esc>
" }}}

" page up and down {{{
map <PageUp> <C-U>
map <PageDown> <C-D>
imap <PageUp> <C-O><C-U>
imap <PageDown> <C-O><C-D>
" }}}

" disable arrow keys {{{
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
" }}}

" toggle folds {{{
noremap <Space> za
" }}}

" }}}

" plugins {{{

" load plugins {{{
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on
" }}}

" scrooloose/nerdtree {{{
map <F2> :NERDTreeToggle<CR>
" }}}

" vim-airline/vim-airline {{{
let g:airline_powerline_fonts=1
let g:airline_enable_syntastic=1
let g:airline#extensions#tabline#enabled=1
" }}}

" vim-syntastic/syntastic {{{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
" }}}

" }}}
