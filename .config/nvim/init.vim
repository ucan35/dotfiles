set path=$PWD/**
set hlsearch
set scrolloff=3
" already set to `filnxtToOF` in neovim
"set shortmess=filnxtToO " was filnxtToOS, dropped S to enable search match index
set number relativenumber " use hybrid line numbers
set clipboard=unnamedplus " use clipboard
set nomodeline " see https://security.stackexchange.com/questions/36001/vim-modeline-vulnerabilities
set mouse=a " enable mouse
set hidden " enable hidden buffers in background
set list " show hidden characters
set listchars=tab:>\ ,trail:-,nbsp:+,extends:>,precedes:<
set updatetime=750
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic

" show cursorline on focus
au VimEnter,WinEnter,BufWinEnter,FocusGained,CmdwinEnter * setlocal cursorline
au WinLeave,FocusLost,CmdwinLeave * setlocal nocursorline

" enable 256 color support inside tmux
set background=dark
set t_Co=256

" make search case insensitive unless pattern contains an uppercase letter
set ignorecase
set smartcase

" persistent undo
set undofile
set undodir=~/.cache/neovim/

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

" make splits gain focus on below/right side, as tmux does
set splitbelow
set splitright

source ~/.config/nvim/plugin.vim
source ~/.config/nvim/autofile.vim
