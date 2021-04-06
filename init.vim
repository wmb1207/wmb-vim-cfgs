call plug#begin('~/.vim/plugged')
source ~/.nvimrc

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()
