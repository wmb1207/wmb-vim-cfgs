set nocompatible              " required
filetype off                  " required

filetype plugin indent on    " required


au BufNewFile,BufRead *.py
	\ set colorcolumn=80 |
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
	\ set fileformat=unix 

"Remaps"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
tnoremap <C-q> <C-\><C-n>
nnoremap <space> za
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-U> 11kzz
nnoremap <C-D> 11jzz
nnoremap j jzz
nnoremap k kzz
nnoremap # #zz
nnoremap * *zz
nnoremap n nzz
nnoremap N Nzz
nnoremap gg ggzz
nnoremap G Gzz
nnoremap gj gjzz
nnoremap gk gkzz
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>
"GoVim custom keybindings
nnoremap ,<space> :GOVIMQuickfixDiagnostics<CR>
nnoremap .<space> :GOVIMSuggestedFixes<CR>
nnoremap .d :GOVIMGoToDef<CR>
nnoremap .D :GOVIMGoToPrevDef<CR>
nnoremap .i :GOVIMImplements<CR>
nnoremap <space><space> :FZF<CR>
nnoremap <space>b :Buffers<CR>
nnoremap <space>gf :GFiles?<CR>
nnoremap <space>w :Windows<CR>
"Resize panes:
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Right> :vertical resize +5<CR>
nnoremap <Down> :resize -5<CR>
nnoremap <Up> :resize +5<CR>
nmap <space>t :TagbarToggle<CR>
nmap <space>pf :NERDTreeToggle<CR>
nmap <space>* :Rg<CR>
"nmap <Leader>f :Vexplore!<CR>

"Plugins""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'tpope/vim-surround'
Plug 'gmarik/Vundle.vim'
Plug 'posva/vim-vue'
Plug 'bagrat/vim-workspace'
Plug 'itchyny/lightline.vim'
Plug 'mxw/vim-jsx'
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'vim-syntastic/syntastic'
Plug 'morhetz/gruvbox'
Plug 'sts10/vim-pink-moon'
Plug 'nvie/vim-flake8'
Plug 'tmsvg/pear-tree'
Plug 'majutsushi/tagbar'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'StanAngeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'leafgarland/typescript-vim'
Plug 'ianks/vim-tsx'
Plug 'nelsyeung/twig.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'christoomey/vim-tmux-navigator'
Plug 'cespare/vim-toml'
Plug 'burnettk/vim-angular'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'lifepillar/vim-mucomplete'
Plug 'franbach/miramare'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'mcchrish/nnn.vim'
Plug 'beanworks/vim-phpfmt'
Plug 'Olical/conjure', {'tag': 'v4.24.1'}
Plug 'hashivim/vim-terraform'
Plug 'jceb/vim-orgmode'
Plug 'jparise/vim-graphql'

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2
set noshowmode
set t_Co=256
set number
set relativenumber
set foldmethod=indent
set foldlevel=99
set tabstop=4
set shiftwidth=4
set encoding=utf-8
set runtimepath^=~/.vim/bundle/node
set runtimepath^=~/.vim/bundle/node
set virtualedit+=onemore
set title

let g:phpfmt_autosave = 0
let g:NERDTreeDirArrows=0
let NERDTreeShowHidden=1
let NERDTreeWinPos=1
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_fmt_command = "goimports"    
let g:go_auto_type_info = 1           
let g:NERDTreeWinSize=40
let g:gruvbox_contrast_dark = 'hard'
let g:tagbar_left=1
let g:tagbar_phpctags_bin='~/.local/bin/phpctags'
let g:tagbar_phpctags_memory_limit = '512M'
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:tagbar_ctags_bin = "/usr/local/bin/ctags"
let g:lightline = {
     \ 'colorscheme': 'gruvbox',
     \ }
colorscheme gruvbox


let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
	\ }

let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
    \ 'e:enums:0:1',                                                               
    \ 'f:function:0:1',                                                            
    \ 't:typealias:0:1',                                                           
    \ 'M:Module:0:1',                                                              
    \ 'I:import:0:1',                                                              
    \ 'i:interface:0:1',                                                           
    \ 'C:class:0:1',                                                               
    \ 'm:method:0:1',                                                              
    \ 'p:property:0:1',                                                            
    \ 'v:variable:0:1',                                                            
    \ 'c:const:0:1',                                                              
  \ ],                                                                            
  \ 'sort' : 0                                                                    
\ }                                                                               

autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=0 expandtab smarttab colorcolumn=80,120
autocmd Filetype markdown setlocal tabstop=2 shiftwidth=2
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=0 smarttab
autocmd Filetype scss setlocal tabstop=4 shiftwidth=2 softtabstop=0 expandtab smarttab
autocmd Filetype twig setlocal tabstop=4 shiftwidth=2 softtabstop=0 expandtab smarttab
autocmd Filetype javascript setlocal tabstop=4 shiftwidth=2 softtabstop=0 expandtab smarttab
autocmd Filetype vue setlocal tabstop=4 shiftwidth=2 softtabstop=0 expandtab smarttab
autocmd Filetype yaml setlocal tabstop=4 shiftwidth=2 softtabstop=0 expandtab smarttab
autocmd Filetype html.twig setlocal tabstop=4 shiftwidth=2 softtabstop=0 expandtab smarttab
autocmd FileType vue syntax sync fromstart
autocmd FileType ts syntax sync fromstart
autocmd StdinReadPre * let s:std_in=1
autocmd FileType go setlocal omnifunc=go#complete#Complete 

hi x016_Grey0 ctermfg=16 guifg=#E5E9F0 "rgb=0,0,0
hi Function term=bold 

syn match Function /\<f_[^(]*(/he=e-1

au filetype go inoremap <buffer> . .<C-x><C-o>

filetype plugin indent on
highlight LineNr ctermfg=grey ctermbg=black

augroup skeletons
  au!
  autocmd BufNewFile *.* silent! execute '0r ~/.vim/templates/skeleton.'.expand("<afile>:e")
augroup END

hi Normal guibg=NONE ctermbg=NONE
