set nocompatible              " be iMproved, required
filetype off                  " required

" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set backspace=2		" more powerful backspacing


" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1
let g:ycm_global_ycm_extra_conf='/Users/paoloanzani/.vim/bundle/youcompleteme/cpp/.ycm_extra_conf.py'
set completeopt-=preview
syntax on
set rnu
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
set copyindent
highlight Comment ctermfg=green

" Remapping
:imap jj <Esc>
