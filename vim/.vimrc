" enable 256 color support inside tmux
set background=dark
set t_Co=256

set path=$PWD/**
set hlsearch
set cursorline
set scrolloff=3

" make search case insensitive unless pattern contains an uppercase letter
set ignorecase
set smartcase

" use hybrid line numbers
set number relativenumber

" use clipboard
set clipboard=unnamedplus

" see https://security.stackexchange.com/questions/36001/vim-modeline-vulnerabilities
set nomodeline

" https://github.com/sickill/vim-monokai
syntax enable
colorscheme monokai

" persistent undo
set undofile
set undodir=~/.vim/undodir

" https://github.com/scrooloose/nerdtree
packadd nerdtree
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" https://github.com/ludovicchabant/vim-gutentags
" https://github.com/skywind3000/gutentags_plus
" https://www.gnu.org/software/global
packadd vim-gutentags
packadd gutentags_plus

let g:gutentags_modules = ['gtags_cscope']
let g:gutentags_project_root = ['.git']
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_plus_switch = 1
