execute pathogen#infect()
syntax on
filetype plugin indent on

set ai
set nu
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set cursorline

if has("gui_running")
	" GUI is running or is about to start.
	" Maximize gvim window (for an alternative on Windows, see simalt below).
	set lines=999 columns=999 
	set background=dark
	colorscheme molokai

	set guioptions -=T
	set guifont=Source\ Code\ Pro\ for\ Powerline\ Regular\ 9

	vmap <C-c> "+yi
	vmap <C-x> "+c
	vmap <C-v> c<ESC>"+p
	imap <C-v> <C-r><C-o>+

    set diffopt+=vertical
endif

let mapleader=","

" autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
autocmd  FileType  php setlocal omnifunc=YouCompleteMe
let g:neocomplete#enable_at_startup = 1

" Enable airline tab
let g:airline#extensions#tabline#enabled = 1

" Powerline fonts
let g:airline_powerline_fonts = 1

let g:ycm_filetype_whitelist = { 'cpp': 1, 'c': 1, 'python':1 }

nmap <F8> :TagbarToggle<CR>

nnoremap <leader>f :<C-u>Unite -start-insert file<CR>
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>r :<C-u>Unite -start-insert file_rec/async:!<CR>
nnoremap <silent> <leader>b :<C-u>Unite buffer bookmark<CR>

"let Vimphpcs_Standard='PSR2'
