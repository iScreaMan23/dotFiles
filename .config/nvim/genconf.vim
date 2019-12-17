set number relativenumber
set nocompatible
set encoding=utf-8
set number relativenumber
set tabstop=4
set autoindent
set copyindent
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set incsearch
set nowrap
set splitbelow splitright
set mouse=a
set nohlsearch
set hidden
set modifiable
set incsearch
set showcmd
set clipboard+=unnamedplus

set wildmenu
set wildmode=longest,list,full

filetype plugin indent on
syntax on
syntax enable

try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry
" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>

" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set bg=light \| set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>


" Copy selected text to system clipboard:
	vnoremap <C-c> "+y
	map <C-p> "+P
" C doesn't overwrite buffer
	nnoremap c "_c

" easy command mode
	nnoremap ; :

" Vim Wiki
	map <leader>v :VimwikiIndex

" Set leader as <SPACE>
	nnoremap <SPACE> <Nop>
	let mapleader="\<Space>"
	let maplocalleader="\<Space>"
	nnoremap <leader>= yypVr=
 	nnoremap <Leader><Leader> :source ~/.config/nvim/init.vim <CR>

" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Simplify window movment
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

	nmap <leader>h  <C-w>h
	nmap <leader>j  <C-w>j
	nmap <leader>k  <C-w>k
	nmap <leader>l  <C-w>l

" fzf normal mode
	nmap <leader><tab> <plug>(fzf-maps-n)
	xmap <leader><tab> <plug>(fzf-maps-x)
	omap <leader><tab> <plug>(fzf-maps-o)

" fzf insert mode
	imap <c-x><c-k> <plug>(fzf-complete-word)
	imap <c-x><c-f> <plug>(fzf-complete-path)
	imap <c-x><c-j> <plug>(fzf-complete-file-ag)
	imap <c-x><c-l> <plug>(fzf-complete-line)

" Use the the_silver_searcher if possible (much faster than Ack)
	if executable('ag')
		let g:ackprg = 'ag --vimgrep --smart-case'
	endif

" When you press gv you Ack after the selected text
	vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

" Open Ack and put the cursor in the right position
	map <leader>g :Ack


