" Language Specific
	autocmd BufEnter,Filetype vim silent! call airline#extensions#whitespace#disable()

	autocmd BufEnter,Filetype markdown,tex,groff
			\ map <leader>o :setlocal spell! spelllang=en_us<CR> |
			" Compile document, be it groff/LaTeX/markdown/etc.
			\ map <leader>c :w! \| !compiler <c-r>%<CR> |
			" Open corresponding .pdf/.html or preview
			\ map <leader>p :!opout <c-r>%<CR><CR> |

" Update binds when sxhkdrc is updated.
	autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Update binds when polybar is updated.
	autocmd BufWritePost *polybar/config silent! !polybar -rqs $HOST</dev/null &>/dev/null & disown %1

" Update .profile
	autocmd BufWritePost .profile  !source $HOME/.profile

" Update .zshrc
	autocmd BufWritePost .zshrc !source $HOME/.zshrc

" Fix shitty bindings :Wut
	autocmd VimEnter,BufNewFile,BufReadPost * silent! :nnoremap <leader><leader> <Nop> \
