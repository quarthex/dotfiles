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
set   smartindent
set   tabstop=4
set   title
set   visualbell t_vb=
set   wildignore=*.class
set   wildmenu

" Black
autocmd BufWritePre *.py execute ':Black'

" CtrlP
let g:ctrlp_regexp = 1
let g:ctrlp_match_window = 'order:ttb,results:0'
let g:ctrlp_extensions = ['buffertag']

" Rust
if executable('rls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rls',
        \ 'cmd': {server_info->['rustup', 'run', 'stable', 'rls']},
        \ 'whitelist': ['rust'],
        \ })
endif 

" Signify
let g:signify_vcs_list = ['git', 'svn']

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
let g:syntastic_python_checkers = ['pylama', 'python']

if ! &diff
	syntax enable
endif

highlight CursorLine   cterm=none
highlight CursorLineNr cterm=inverse

filetype off
set runtimepath+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Townk/vim-autoclose'
Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'majutsushi/tagbar'
Plugin 'mhinz/vim-signify'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'psf/black'
Plugin 'rust-lang/rust.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-syntastic/syntastic'
call vundle#end()
filetype plugin indent on

" Commands mapping

nnoremap <C-n> :set relativenumber!<CR>
map <F7> :NERDTreeToggle<CR>
map <F8> :Tagbar<CR>
