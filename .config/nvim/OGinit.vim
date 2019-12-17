set number relativenumber 

if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

all plug#begin('~/.config/nvim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-surround'
Plug 'tomasiser/vim-code-dark'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-syntastic/syntastic'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'jreybert/vimagit'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'kovetskiy/sxhkd-vim'
Plug 'SirVer/ultisnips'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lervag/vimtex'
Plug 'honza/vim-snippets'
Plug 'ycm-core/YouCompleteMe'  " This is a long read
Plug 'powerline/fonts'
Plug 'xuhdev/vim-latex-live-preview'
call plug#end()

"" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
""let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"
"" vim-syntastic 
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
"
"" Set leader as <SPACE>
"nnoremap <SPACE> <Nop>
"let mapleader="\<Space>"
"let maplocalleader="\<Space>"
"nnoremap <leader>= yypVr=
"nnoremap <Leader>s :source ~/.config/nvim/init.vim <CR>
"
"let g:ctrlp_map = '<c-p>'
"map <C-h> <C-w>h
"map <C-j> <C-w>j
"map <C-k> <C-w>k
"map <C-l> <C-w>l
"
"nnoremap c "_c
"nnoremap ; :
"
"" vim-airline https://github.com/vim-airline/vim-airline
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline_powerline_fonts = 1
"
"
"" fzf https://github.com/junegunn/fzf.vim
"" [Buffers] Jump to the existing window if possible
"let g:fzf_buffers_jump = 1
"
"" [[B]Commits] Customize the options used by 'git log':
"let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
"
"" [Tags] Command to generate tags file
"let g:fzf_tags_command = 'ctags -R'
"
"" [Commands] --expect expression for directly executing the command
"let g:fzf_commands_expect = 'alt-enter,ctrl-x'
"
"nmap <leader><tab> <plug>(fzf-maps-n)
"xmap <leader><tab> <plug>(fzf-maps-x)
"omap <leader><tab> <plug>(fzf-maps-o)
"
"" fzf insert mode
"imap <c-x><c-k> <plug>(fzf-complete-word)
"imap <c-x><c-f> <plug>(fzf-complete-path)
"imap <c-x><c-j> <plug>(fzf-complete-file-ag)
"imap <c-x><c-l> <plug>(fzf-complete-line)
"
"set nocompatible
"set encoding=utf-8
"set number relativenumber  
"set tabstop=4
"set autoindent
"set copyindent 
"set shiftwidth=4
"set shiftround
"set showmatch
"set ignorecase
"set smartcase
"set smarttab
"set incsearch
"set nowrap
"set splitbelow splitright
"set mouse=a
"set nohlsearch
"
"set wildmode=longest,list,full
"
"filetype plugin indent on
"syntax on
"
"" color schemes 
"" https://blog.pabuisson.com/2018/06/favorite-color-schemes-modern-vim-neovim/
""
"" colorscheme codedark
"" let g:airline_theme = 'codedark'
"
"" colorscheme palenight
"" set background=dark
"" let g:airline_theme = 'palenight'
"" let g:palenight_terminal_italics=1
"
" colorscheme onedark
" let g:airline_theme='onedark'
" let g:onedark_terminal_italics=1
"
"if (has("nvim"))
"  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"endif
"
"if (has("termguicolors"))
"  set termguicolors
"endif
"
