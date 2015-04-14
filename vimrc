"[*] file header
"project: vimrc_justin
"file: .vimrc
"author: elias abderhalden
"date: 2015-04-14


"[*] initial stuff
let mapleader='m'


"[*] sources
"source scripts.vim
source ~/.vim/vimrc_ext.vim


"[*] plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
	" installs and updates plugins
Plugin 'tpope/vim-obsession'
	" makes and maintains sessions
Plugin 'ervandew/supertab'
	" autocomplete
Plugin 'Shougo/unite.vim'
	" find files
Plugin 'tomasr/molokai'
	" color theme
Plugin 'bling/vim-bufferline'
	" line at bottom showing open buffers
Plugin 'tpope/vim-fugitive'
	" git wrapper

call vundle#end()
filetype plugin indent on


"[*.*] plugin settings


"[*.*.*] molokai
let g:rehash256 = 1


"[*.*.*] supertab
let g:SuperTabNoCompleteAfter = [ '^', '\s', '"',
								\ '(', ')',
								\ '{', '}',
								\ '\\', '/']


"[*.*.*] vim-better-whitespace
autocmd VimEnter,Colorscheme * :hi ExtraWhitespace ctermbg=236
nnoremap <silent> <leader>x :ToggleWhitespace<CR>


"[*] colorscheme
syntax on
"colorscheme mustang
"colorscheme twilight256
"colorscheme badwolf
"set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme luna-term
colorscheme molokai_ea


"[*] local mappings
inoremap jk <Esc>
nnoremap <silent> <leader>w :w<CR>
"nnoremap  :
inoremap <silent> <C-p> <Esc>pi


"[*.*] movement mappings
"nnoremap io
source ~/.vim/vimrc_map.vim
nnoremap o $a
nnoremap <silent> <Space> :call Movemap_toggle()<CR>
vnoremap <silent> <Space> :call Movemap_toggle()<CR>
call Movemap_mov()
set whichwrap+=<,>,h,l,[,]
set scrolloff=999


"[*.*] buffer mappings
nnoremap <silent> <leader>f :w<CR>:bnext<CR>
nnoremap <silent> <leader>s :w<CR>:bprevious<CR>
"nnoremap <Space> z.
"map z z.


"[*.*] editing mappings
nnoremap t dd
nnoremap y yy


"[*.*] folding mappings
nnoremap zz zA
nnoremap zm zM
nnoremap zr zR


"[*.*] windows mapping
nnoremap <leader>d <C-w>j
nnoremap <leader>e <C-w>k
nnoremap W :split<CR>
nnoremap ww :vsplit<CR>
nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wh <C-w>h
nnoremap wl <C-w>l
nnoremap we :only<CR>


"[*.*] saving mappings
command -nargs=0 -bar Save if &modified
	\|	if empty(bufname('%'))
	\|		browse confirm write
	\|	else
	\|		confirm write
	\|	endif
	\|endif

inoremap <silent> jw <Esc>:<C-u>Save<CR>i
inoremap <silent> jx <Esc>:x<CR>
nnoremap <silent> ;w :<C-u>Save<CR>
nnoremap <silent> ;x :x<CR>
nnoremap <silent> ;d :w<CR>:bd<CR>
nnoremap <silent> ;q :q!<CR>


"[*.*] command mappings
cnoremap a<CR> Unite file buffer<CR>


"[*.*] other
nnoremap <silent> <leader>a :let @/ = ""<CR>
nnoremap <silent> <leader>X :call Togglestar()<CR>
"nnoremap <leader>ig
nnoremap <F7> :set list<CR>
nnoremap <F8> :set nolist<CR>


"[*] settings
set number
set cursorline
set wildmenu
"set showcmd
set laststatus=2
set nolist


"[*.*] syntax
"mode:
"func()
"{
"	if ()
"	 	{
"	 	abc;
"	 	}
"}
set cinkeys=0{,0},:,0#,!^F,o,O,e
set cinoptions={1s

"mode:
"func()
"{
"if () {
"	abc;
"	}
"}
"set cinkeys=0{,*0},:,0#,!^F,o,O,e
"set cinoptions={1s,^-8


"[*.*] searching
set hlsearch


"[*.*] tab settings
set noexpandtab
set nosmarttab
set tabstop=4
set softtabstop=0
set shiftwidth=4


"[*.*] folding
set nofoldenable
set foldmethod=syntax
set foldlevel=4
autocmd FileType c setlocal foldmethod=syntax





