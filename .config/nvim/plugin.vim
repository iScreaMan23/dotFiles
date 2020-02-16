" Set install plug.vim if doesn't exist
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.config/nvim/plugged')

	" vim-latex-live-preview
	Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

	" Easy mode
	Plug 'easymotion/vim-easymotion'

	" Tmux"
	Plug 'tmux-plugins/vim-tmux'

	" Previous buffer
	Plug 'LeonB/vim-previous-buffer'

	" Doom-Emacs-like key context menus
	Plug 'liuchengxu/vim-which-key'

	" Hard mode
	" Plug 'dusans/vim-hardmode'
	" tpope: The True UNIX Chad
	" Plug 'tpope/vim-obsession'
	" Plug 'tpope/vim-fugitive'
	" Plug 'tpope/vim-tbone'
	Plug 'tpope/vim-unimpaired'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-repeat'
	Plug 'jlzhjp/vim-pair'

	" Vim in firefox
	Plug 'glacambre/firenvim', { 'do': { _ -> firevim#install(0) } }

	" Toggle menus
	Plug 'jeetsukumaran/vim-buffergator'
	Plug 'scrooloose/nerdtree'
	Plug 'iscreaman23/windowToggle'
	" Plug 'vimwiki/vimwiki'

	" Shell Scripting
	Plug 'itspriddle/vim-shellcheck'

	" Style and Corrections
	Plug 'vim-syntastic/syntastic'
	Plug 'dense-analysis/ale' " Check syntax in Vim asyncronously

	" Eye Candy
	Plug 'bling/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Reading
	Plug 'junegunn/goyo.vim'
	Plug 'jez/vim-superman'

	" Themes https://github.com/vim-airline/vim-airline/wiki/Screenshots
	Plug 'habamax/vim-colors-defnoche'
	Plug 'joshdick/onedark.vim'
	Plug 'tomasiser/vim-code-dark'
	Plug 'drewtempelmeyer/palenight.vim'


" Python
	Plug 'davidhalter/jedi-vim'

" CSS
	Plug 'ap/vim-css-color'

" LaTeX
"	Plug 'xuhdev/vim-latex-live-preview'
"	Plug 'lervag/vimtex'

" Git
"	Plug 'airblade/vim-gitgutter'  " Slows down moving left w/ space and h
"	Plug 'jreybert/vimagit'

" Quality of Life
	Plug 'tpope/vim-surround'

" Snippets
"	Plug 'honza/vim-snippets'
"	Plug 'SirVer/ultisnips'
"	Plug 'sheerun/vim-polyglot'

" Auto Complete
 	Plug 'ycm-core/YouCompleteMe'  " This is a long read

" Search
 	Plug 'mileszs/ack.vim'
	Plug 'junegunn/fzf.vim'

" Config Syntax
	Plug 'kovetskiy/sxhkd-vim'

call plug#end()

" vimwiki
	let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
	let g:vimwiki_list = [{'path': '~/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]
   	let g:vimwiki_map_prefix ='<leader>W'

" disable gitgutter keys
	let g:gitgutter_map_keys = 0

" add ag/the_silver_searcher to ack
	let g:ackprg = 'ag --nogroup --nocolor --column'

"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
""let g:UltiSnipsExpandTrigger="<tab>"
"	let g:UltiSnipsJumpForwardTrigger="<c-b>"
"	let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
"" If you want :UltiSnipsEdit to split your window.
"	let g:UltiSnipsEditSplit="vertical"
"
"" vim-syntastic
"	set statusline+=%#warningmsg#
"	set statusline+=%{SyntasticStatuslineFlag()}
"	set statusline+=%*
"
"	let g:syntastic_always_populate_loc_list = 1
"	let g:syntastic_auto_loc_list = 1
"	let g:syntastic_check_on_open = 1
"	let g:syntastic_check_on_wq = 0
"

" fzf https://github.com/junegunn/fzf.vim
"" [Buffers] Jump to the existing window if possible
	let g:fzf_buffers_jump = 1
"
"" [[B]Commits] Customize the options used by 'git log':
"	let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
"
"" [Tags] Command to generate tags file
"	let g:fzf_tags_command = 'ctags -R'
"
"" [Commands] --expect expression for directly executing the command
"	let g:fzf_commands_expect = 'alt-enter,ctrl-x'

" vim-pair
	let g:pair_toggle_key = "<Leader>pt"
	let g:pair_fly_key = "<Tab>"
	let g:pair_enable_cr_mapping = v:true
	let g:pair_enable_bs_mapping = v:true
	let g:pair_enable_space_mapping = v:true
	let g:pair_enable_fly_key_mapping = v:true
	let g:pair_enable_toggle_key_mapping = v:true
	let g:pair_enable_visual_mode_mapping = v:true
	let g:pair_enable_fly_key_mapping = v:false

	function! s:Tab()
	  if pumvisible()
	    return "\<C-Y>"
	  else
	    return g:PairFly()
	  endif
	endfunction

	inoremap <silent> <expr> <Tab> <SID>Tab()

" easy motion
	nmap s <Plug>(easymotion-s)

" firenvim
" let fc['.*'] = { 'takeover': 'nonempty' }

" vim-latex-live-preview
	let g:livepreview_previewer = 'zathura'
