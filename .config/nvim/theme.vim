" color schemes 
" https://blog.pabuisson.com/2018/06/favorite-color-schemes-modern-vim-neovim/
"
" colorscheme codedark
" let g:airline_theme = 'codedark'

" colorscheme palenight
" set background=dark
" let g:airline_theme = 'palenight'
" let g:palenight_terminal_italics=1

colorscheme onedark
let g:airline_theme='onedark'
let g:onedark_terminal_italics=1

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif
