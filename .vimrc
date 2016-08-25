set nocompatible

set   autoindent
set   background=dark
set   backspace=indent,eol,start
set   colorcolumn=80
set   cursorline
set noexpandtab
set   hlsearch
set   incsearch
set   list
set   listchars=tab:»\ ,trail:.
set   modeline
set   number
set   scrolloff=3
set   shiftwidth=4
set   tabstop=4
set   title
set   visualbell t_vb=
set   wildignore=*.class

" CtrlP
let g:ctrlp_match_window_reversed = 0

if ! &diff
	syntax enable
endif

nnoremap <C-n> :set relativenumber!<CR>
