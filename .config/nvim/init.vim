set nocompatible
set number relativenumber
set encoding=utf-8
set autochdir
set tabstop=4
set autoindent
set smartindent
set copyindent
set shiftwidth=4
set shiftround
set showmatch
set ignorecase
set smartcase
set smarttab
set nowrap
set splitbelow splitright
set mouse=a
set nohls
set hidden
set modifiable
set incsearch
set showcmd
set clipboard+=unnamedplus
set ruler
set linebreak

set nobackup
set nowb
set noswapfile

" Height of the command bar
set cmdheight=1

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Add a bit extra margin to the left
set foldcolumn=1

" on search highlight until enter pressed second time
set hls
nnoremap <silent><CR> :noh<CR><CR>

set wildmenu

" cnoremap <Left> <Space><BS><Left>
" cnoremap <Right> <Space><BS><Right>

filetype plugin indent on
syntax on
syntax enable

" Visual mode search
vnoremap <silent> / :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> ? :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

try
    set undodir=~/.vim_runtime/temp_dirs/undodir
    set undofile
catch
endtry

" Check file in shellcheck:
	map <leader>s :!clear && shellcheck %<CR>

" Goyo plugin makes text more readable when writing prose:
	map <leader>f :Goyo \| set bg=dark \| set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>

" Replace all is aliased to S.
	nnoremap <leader>S :%s//g<Left><Left>

" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !compiler <c-r>%<CR>

" Open corresponding .pdf/.html or preview
	map <leader>p :!opout <c-r>%<CR><CR>

" Copy selected text to system clipboard:
	vnoremap <C-c> "+y

" easy command mode
	nnoremap ; :

" easy command mode
	nnoremap Y y$

" Vim Wiki
	map <leader>v :VimwikiIndex

" Set leader as <SPACE>
	nnoremap <SPACE> <Nop>
	let mapleader="\<Space>"
	let maplocalleader="\<Space>"
 	nmap <silent> <Leader><Leader> :bnext <cr>

" sudo writes file when you forget
	cmap w!! w !sudo tee > /dev/null %

" pull up terminal
	tnoremap <Esc><Esc> <c-\><c-n>
	nnoremap <silent> <leader>t :call ToggleTerminal() <cr>


	function! ToggleTerminal()
		if !exists("g:termname")
			execute 'sp | res 10 | term'
			let g:termname = bufname()
		else
			execute 'bunload!' g:termname
			unlet g:termname
		endif
	endfunction

" quit,write,
	nmap <leader>w :w <cr>
	nmap <leader>wq :wq <cr>
	nmap <leader>W :w!! <cr>
	nmap <leader>q :q <cr>
	nmap <leader>Q :q! <cr>

" Simplify window movment
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

	nmap <leader>h  <C-w>h
	nmap <leader>j  <C-w>j
	nmap <leader>k  <C-w>k
	nmap <leader>l  <C-w>l

" source plugins, autostart/close commands and themes
	source $HOME/.config/nvim/plugin.vim
	source $HOME/.config/nvim/autocmd.vim
	source $HOME/.config/nvim/theme.vim

" Functions
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
