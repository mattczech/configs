set nocompatible
syntax on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab " spaces not tabs

autocmd FileType c,cpp,slang set cindent  " set indent in c and c++ files
autocmd Filetype make set noexpandtab shiftwidth=8  " use tabs not spaces in makefiles!

set autoindent  " use currents line indent to set indent of next line
set smartindent " attempt to guess the ident level of any new line

" toggle comment script w/ ATL+c
execute "source ~/.vim/ToggleCommentify.vim"
map <M-c> :call ToggleCommentify()<CR>j
imap <M-c> <ESC>:call ToggleComentify()<CR>j

" scripts/plugins
execute "source ~/.vim/a.vim"
execute "source ~/.vim/minibufexpl.vim"

" save folds on close and reload on open
au BufWinLeave * mkview
au BufWinEnter * silent loadview
