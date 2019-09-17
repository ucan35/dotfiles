set path=$PWD/**
set hlsearch
set cursorline
set scrolloff=3
set shortmess=filnxtToO " was filnxtToOS, dropped S to enable search match index
set number relativenumber " use hybrid line numbers
set clipboard=unnamedplus " use clipboard
set nomodeline " see https://security.stackexchange.com/questions/36001/vim-modeline-vulnerabilities
set mouse=a " enable mouse
set hidden " enable hidden buffers in background
set list " show hidden characters

" enable 256 color support inside tmux
set background=dark
set t_Co=256

" make search case insensitive unless pattern contains an uppercase letter
set ignorecase
set smartcase

" persistent undo
set undofile
set undodir=~/.vim/undodir

" disable goddamn `Ex` mode
nnoremap Q <Nop>

" custom keybindings
nnoremap <C-Up> <C-y>
nnoremap <C-Down> <C-e>

inoremap <C-Up> <C-x><C-y>
inoremap <C-Down> <C-x><C-e>

" move line(s) up and down, see https://vim.fandom.com/wiki/Moving_lines_up_or_down
nnoremap <silent> <C-S-Up> :m .-2<CR>==
nnoremap <silent> <C-S-Down> :m .+1<CR>==
inoremap <silent> <C-S-Up> <Esc>:m .-2<CR>==gi
inoremap <silent> <C-S-Down> <Esc>:m .+1<CR>==gi
vnoremap <silent> <C-S-Up> :m '<-2<CR>gv=gv
vnoremap <silent> <C-S-Down> :m '>+1<CR>gv=gv

" https://github.com/lifepillar/vim-solarized8
syntax enable
colorscheme solarized8_high

" https://github.com/tpope/vim-obsession
packadd vim-obsession

" https://github.com/christoomey/vim-tmux-navigator
packadd vim-tmux-navigator
let g:tmux_navigator_disable_when_zoomed = 1 " disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_no_mappings = 1 " custom mappings
nnoremap <silent> {A-Left} :TmuxNavigateLeft<cr>
nnoremap <silent> {A-Down} :TmuxNavigateDown<cr>
nnoremap <silent> {A-Up} :TmuxNavigateUp<cr>
nnoremap <silent> {A-Right} :TmuxNavigateRight<cr>

" make splits gain focus on below/right side, as tmux does
set splitbelow
set splitright

packadd lightline.vim
set laststatus=2 " show statusline
set noshowmode " hide unnecessary -- INSERT -- block
let g:lightline = {
    \ 'colorscheme': 'wombat'
\}

" https://github.com/tpope/vim-sleuth
packadd vim-sleuth
set tabstop=4
set shiftwidth=4
set expandtab

" https://github.com/thaerkh/vim-indentguides
packadd vim-indentguides
let g:indentguides_ignorelist = ['text', 'json']

" https://github.com/scrooloose/nerdtree
packadd nerdtree
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" https://github.com/junegunn/fzf.vim
packadd fzf.vim
nnoremap <silent> <C-p> :GFiles<CR>

let g:fzf_layout = { 'down': '25%' }

" https://github.com/tpope/vim-fugitive
packadd vim-fugitive

" https://github.com/ludovicchabant/vim-gutentags
" https://github.com/skywind3000/gutentags_plus
" https://www.gnu.org/software/global
packadd vim-gutentags
packadd gutentags_plus
let g:gutentags_modules = ['gtags_cscope']
let g:gutentags_project_root = ['.git']
let g:gutentags_cache_dir = expand('~/.cache/tags')
let g:gutentags_plus_switch = 1
