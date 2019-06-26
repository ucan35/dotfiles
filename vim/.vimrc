" enable 256 color support inside tmux
set background=dark
set t_Co=256

syntax on
set path=$PWD/**

" use hybrid line numbers
set number relativenumber

" use clipboard
set clipboard=unnamedplus

" see https://security.stackexchange.com/questions/36001/vim-modeline-vulnerabilities
set nomodeline

" https://github.com/scrooloose/nerdtree
packadd nerdtree
nnoremap <silent> <F3> :NERDTreeToggle<CR>
