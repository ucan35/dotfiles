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
nnoremap <silent> <F3> :call ToggleNetrw()<CR>

" stolen from https://www.reddit.com/r/vim/comments/6jcyfj/toggle_lexplore_properly/djdmsal/
function! ToggleNetrw()
    let isOpen = 0
    for i in range(1, bufnr("$"))
        if(getbufvar(i, "&filetype") == "netrw")
            silent exec "bwipeout " . i
            let isOpen = 1
        endif
    endfor
    if !isOpen
        silent Lexplore
    endif
endfunction
