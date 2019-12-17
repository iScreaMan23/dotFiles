if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')
" 	Plug 'evandew/supertab'
"	Plug 'davidhalter/jedi-vim'
"	Plug 'ggreer/the_silver_searcher'
" 	Plug 'mileszs/ack.vim'
	Plug 'joshdick/onedark.vim'
"	Plug 'tpope/vim-surround'
"	Plug 'tomasiser/vim-code-dark'
"	Plug 'sheerun/vim-polyglot'
"	Plug 'junegunn/fzf.vim'
"	Plug 'airblade/vim-gitgutter'  " Slows down moving left w/ space and h
"   Plug 'vim-syntastic/syntastic'
"	Plug 'drewtempelmeyer/palenight.vim'
"	Plug 'scrooloose/nerdtree'
"	Plug 'junegunn/goyo.vim'
"	Plug 'jreybert/vimagit'
"	Plug 'vimwiki/vimwiki'
"	Plug 'bling/vim-airline'
"	Plug 'kovetskiy/sxhkd-vim'
"	Plug 'SirVer/ultisnips'
"	Plug 'lervag/vimtex'
"	Plug 'honza/vim-snippets'
"	Plug 'ycm-core/YouCompleteMe'  " This is a long read
"	Plug 'powerline/fonts'
"	Plug 'xuhdev/vim-latex-live-preview'
call plug#end()

" vimwiki
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
"let g:UltiSnipsExpandTrigger="<tab>"
	let g:UltiSnipsJumpForwardTrigger="<c-b>"
	let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
	let g:UltiSnipsEditSplit="vertical"

" vim-syntastic
	set statusline+=%#warningmsg#
	set statusline+=%{SyntasticStatuslineFlag()}
	set statusline+=%*

	let g:syntastic_always_populate_loc_list = 1
	let g:syntastic_auto_loc_list = 1
	let g:syntastic_check_on_open = 1
	let g:syntastic_check_on_wq = 0

" vim-airline https://github.com/vim-airline/vim-airline
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extensions#tabline#left_alt_sep = '|'
	let g:airline#extensions#tabline#formatter = 'unique_tail'
	let g:airline_powerline_fonts = 1

" disable gitgutter keys
	let g:gitgutter_map_keys = 0

" fzf https://github.com/junegunn/fzf.vim
" [Buffers] Jump to the existing window if possible
	let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
	let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
	let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
	let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
