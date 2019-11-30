let g:loaded_netrw = 1 " dont load `netrw`

" https://github.com/gruvbox-community/gruvbox
syntax enable
set termguicolors
let g:gruvbox_invert_selection = 0
let g:gruvbox_italic = 1
colorscheme gruvbox

" https://github.com/christoomey/vim-tmux-navigator
packadd vim-tmux-navigator
let g:tmux_navigator_disable_when_zoomed = 1 " disable tmux navigator when zooming the Vim pane
let g:tmux_navigator_no_mappings = 1 " custom mappings
nnoremap <silent> {A-Left} :TmuxNavigateLeft<cr>
nnoremap <silent> {A-Down} :TmuxNavigateDown<cr>
nnoremap <silent> {A-Up} :TmuxNavigateUp<cr>
nnoremap <silent> {A-Right} :TmuxNavigateRight<cr>

" https://github.com/itchyny/lightline.vim
packadd lightline.vim
set laststatus=2 " show statusline
set noshowmode " hide unnecessary -- INSERT -- block
let g:lightline = {
    \ 'colorscheme': 'wombat'
\}

" https://github.com/tpope/vim-sleuth
packadd! vim-sleuth
set tabstop=4
set shiftwidth=4
set expandtab

" https://github.com/Yggdroot/indentLine.git
packadd indentLine
let g:indentLine_char = '┊'

" https://github.com/andymass/vim-matchup.git
packadd! vim-matchup
let g:matchup_matchparen_deferred = 1
let g:matchup_matchparen_hi_surround_always = 1
let g:matchup_matchparen_timeout = 50

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
