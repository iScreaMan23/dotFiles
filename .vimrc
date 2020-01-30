set nocompatible
set clipboard+=unnamedplus
set nobackup
set nowb
set noswapfile
colorscheme defnoche 

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"


set nohls

" search highlight until enter pressed second time
	set hls
	nnoremap <silent><CR> :noh<CR><CR>

set number relativenumber

filetype plugin indent on
syntax on
syntax enable
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set autoindent
set smartindent
set copyindent

" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set bg=dark \| set linebreak<CR>

" Set leader as <SPACE>
	nnoremap <SPACE> <Nop>
	let mapleader="\<Space>"
	let maplocalleader="\<Space>"
 	nmap <silent> <Leader><Leader> :bnext <cr>

if ! filereadable(expand('~/.vim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.vim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
	Plug 'junegunn/goyo.vim'
	" Plug 'vim-utils/vim-man'
	Plug 'jez/vim-superman'
	Plug 'yuratomo/w3m.vim'
	Plug 'vim-scripts/browser.vim'
call plug#end()
