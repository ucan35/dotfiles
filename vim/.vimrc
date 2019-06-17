" enable 256 color support inside tmux
set background=dark
set t_Co=256

" use hybrid line numbers
set number relativenumber

syntax on
set path=$PWD/**

" use clipboard
set clipboard=unnamedplus

" see https://security.stackexchange.com/questions/36001/vim-modeline-vulnerabilities
set nomodeline

" nerdtree like netrw
let g:netrw_liststyle=3
let g:netrw_banner=0 " remove top banner
let g:netrw_browse_split = 4 " open file in prevous window
let g:netrw_winsize=15 " %15
