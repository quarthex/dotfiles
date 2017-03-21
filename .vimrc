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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_polulate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['standard']
function FindStandardJs()
	let s:modulesdir = finddir('node_modules', '.;/')
	if s:modulesdir != ''
		let s:exec = s:modulesdir . '/.bin/standard'
		if executable(s:exec)
			let g:syntastic_javascript_standard_exec = s:exec
		endif
	endif
endfunction
autocmd Filetype javascript call FindStandardJs()

if ! &diff
	syntax enable
endif

nnoremap <C-n> :set relativenumber!<CR>

highlight CursorLine   cterm=none
highlight CursorLineNr cterm=inverse

filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Townk/vim-autoclose'
Plugin 'VundleVim/Vundle.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-syntastic/syntastic'
call vundle#end()
filetype plugin indent on
