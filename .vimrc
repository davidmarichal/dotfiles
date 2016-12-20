set nocompatible
filetype off			" required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All plugins must be before the following line
call vundle#end()		" required
filetype plugin indent on	" required

" Set number lines
set nu
set rnu

" Disable word wrap
set nowrap

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

" Set color to 256
set t_Co=256

" Status bar
set laststatus=2
let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled=1

" Cycle thru buffers
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>