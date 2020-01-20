" Source other two files
	so $NVIMPATH/plugin.vim
	so $NVIMPATH/autocmd.vim

" General Settings
	set autochdir
	set clipboard+=unnamedplus
	set encoding=utf-8
	set hidden
	set mouse=a
	set nocompatible
	set number relativenumber
	set showmatch
	set splitbelow splitright

" Tabs and indentation
	set autoindent
	set copyindent
	set shiftround
	set shiftwidth=4
	set smartindent
	set smarttab
	set tabstop=4

" Text formating
	autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
	autocmd BufWritePre * %s/\s\+$//e
	set nowrap
	set linebreak
	filetype plugin indent on

" Syntax
	syntax on
	syntax enable

" Bottom UI
	set ruler
	set showcmd
	set cmdheight=1
	set wildmenu
"https://github.com/liuchengxu/vim-which-key
" https://github.com/hecal3/vim-leader-guide
" Disable backing up/vim version control
	set nobackup
	set nowb
	set noswapfile

" Reuse old undos
	try
		set undodir=~/.vim_runtime/temp_dirs/undodir
		set undofile
	catch
	endtry

" Set to auto read when a file is changed from the outside
	set autoread
	autocmd FocusGained,BufEnter * checktime

" Searching (Disable highlight search after enter is pressed)
	set ignorecase
	set incsearch
	set smartcase
	set showmatch
	set hls
	nnoremap <silent><CR> :noh<CR><CR>

	set foldcolumn=1

" Remapping some vim defaults
	nnoremap Y y$
	" nnoremap ; :

" Set leader as <Space> and set WhichKey
	" set notimeout
	let g:mapleader = " "
	let g:maplocalleader = " "
	nnoremap <silent> <leader>      :WhichKey '<Space>'<CR>
	nnoremap <silent> <localleader> :WhichKey  '<Space>'<CR>
"	let g:which_key_map

	let g:which_key_map = {}

	let g:which_key_map.b = 'which_key_ignore'
	let g:which_key_map.Up = 'which_key_ignore'
	let g:which_key_map.Right = 'which_key_ignore'
	let g:which_key_map.Left = 'which_key_ignore'
	let g:which_key_map.Down = 'which_key_ignore'

	let g:which_key_map.SUp = 'which_key_ignore'
	let g:which_key_map.SRight = 'which_key_ignore'
	let g:which_key_map.SLeft = 'which_key_ignore'
	let g:which_key_map.SDown = 'which_key_ignore'

" Buffer Nav
	nnoremap <silent> <leader>bb :Buffers <cr>
 	nnoremap <silent> <Leader>bn :bnext  <cr>
 	nnoremap <silent> <Leader>bp :bprevious <cr>
 	nnoremap <silent> <Leader>bd :bdelete <cr>

	" nnoremap <silent> <localleader> :<c-u>WhichKey ']'<CR>
	" nnoremap <silent> <localleader> :<c-u>WhichKey '['<CR>
	" nnoremap <silent> <localleader> :<c-u>WhichKey 'g'<CR>
	" nnoremap <silent> <localleader> :<c-u>WhichKey 'c'<CR>
	set timeoutlen=500

" quit,write,
	" nmap <leader>q :q <cr>
	" nmap <leader>w :w! <cr>

" space window nav
	nnoremap <leader>h <c-w>h
	nnoremap <leader>j <c-w>j
	nnoremap <leader>k <c-w>k
	nnoremap <leader>l <c-w>l

" Goyo plugin makes text more readable when writing prose:
"	map <leader>f :Goyo \| set bg=dark \| set linebreak<CR>

" Visual mode search
	vnoremap <silent> / :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
	vnoremap <silent> ? :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Nerd tree
	map <silent> <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"" vim-airline https://github.com/vim-airline/vim-airline

" File nav
	nnoremap <silent> <leader>fr :History <cr>
	nnoremap <silent> <leader>ff :Files <cr>

	silent! call repeat#set("g>vim-repeat", v:count)


" THEMES
" https://vimcolors.com/
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline#extensions#tabline#formatter = 'unique_tail'
	let g:airline_powerline_fonts = 1
	let g:airline_left_sep=''
	let g:airline_right_sep=''

function! VisualSelection(direction, extra_filter) range
	let l:saved_reg = @"
	execute "normal! vgvy"

	let l:pattern = escape(@", "\\/.*'$^~[]")
	let l:pattern = substitute(l:pattern, "\n$", "", "")

	if a:direction == 'gv'
		call CmdLine("Ack '" . l:pattern . "' " )
	elseif a:direction == 'replace'
		call CmdLine("%s" . '/'. l:pattern . '/')
	endif

	let @/ = l:pattern
	let @" = l:saved_reg
endfunction

" theme
	colorscheme defnoche
	let g:airline_theme='minimalist'
	hi Normal guibg=NONE ctermbg=NONE
