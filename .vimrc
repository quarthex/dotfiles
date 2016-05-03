set background=dark
set backspace=indent,eol,start
set colorcolumn=80
set expandtab
set hlsearch
set nocompatible
set list
set listchars=tab:»\ ,trail:.
set number
set scrolloff=3
set shiftwidth=4
set tabstop=4
set title
set visualbell t_vb=
set wildignore=*.class
syntax on

" CtrlP
let g:ctrlp_match_window_reversed = 0

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
