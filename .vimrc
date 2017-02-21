set nocompatible

" Enable syntax
syntax enable

" Search into subfolders
" Provides tab-completion for all files
set path+=**

" Display all matching file when we tab-complete
set wildmenu

" Settings
set t_Co=256
colorscheme molokai

" vim directories
set backupdir=$HOME/.vim/backups
set directory=$HOME/.vim/swaps
set undodir  =$HOME/.vim/undo

" Cycle between buffers
:nnoremap <Tab>   :bnext    <CR>
:nnoremap <S-Tab> :bprevious<CR>

" Misc.
set autoindent
set backspace=indent,eol,start
set cursorline
set gdefault
set hlsearch
set laststatus=2
set nu
set rnu
set tabstop=4
set expandtab
set title
set undofile
set nowrap

" Remap :W to :w
command! W w

" Insert newline
map <leader><Enter> o<Esc>

" Page up and down
map  <PageUp>   <C-U>
map  <PageDown> <C-D>
imap <PageUp>   <C-O><C-U>
imap <PageDown> <C-O><C-D>

" Disable arrow keys
noremap <Up>    <nop>
noremap <Down>  <nop>
noremap <Left>  <nop>
noremap <Right> <nop>

" Toggle folds
noremap <Space> za

" Remove trailing whitespace
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Load Vundle and plugins
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

" scrooloose/nerdtree
map <F2> :NERDTreeToggle<CR>

" vim-airline/vim-airline
let g:airline_powerline_fonts=1
let g:airline_enable_syntastic=1
let g:airline#extensions#tabline#enabled=1

" vim-syntastic/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_java_checkers=['javac']
let g:syntastic_java_javac_classpath=$ANDROID_HOME.'/platforms/android-25/*.jar'
