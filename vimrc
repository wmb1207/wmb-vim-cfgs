set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

call vundle#end()            " required
filetype plugin indent on    " required

syntax enable

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
nnoremap <space>f :FZF<CR>
"Resize panes:
nnoremap <Left> :vertical resize -5<CR>
nnoremap <Right> :vertical resize +5<CR>
nnoremap <Down> :resize -5<CR>
nnoremap <Up> :resize +5<CR>
nmap <Leader>t :TagbarToggle<CR>
nmap <Leader>f :NERDTreeToggle<CR>

"Plugins""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'gmarik/Vundle.vim'
Plugin 'posva/vim-vue'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'bagrat/vim-workspace'
Plugin 'itchyny/lightline.vim'
Plugin 'mxw/vim-jsx'
Plugin 'vimwiki/vimwiki'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-syntastic/syntastic'
Plugin 'morhetz/gruvbox'
Plugin 'davidhalter/jedi-vim'
Plugin 'sts10/vim-pink-moon'
Plugin 'nvie/vim-flake8'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/goyo.vim'
Plugin 'tmsvg/pear-tree'
Plugin 'majutsushi/tagbar'
Plugin 'leafOfTree/vim-vue-plugin'
Plugin 'StanAngeloff/php.vim'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'leafgarland/typescript-vim'
Plugin 'ianks/vim-tsx'
Plugin 'nelsyeung/twig.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'cespare/vim-toml'
Plugin 'burnettk/vim-angular'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'lifepillar/vim-mucomplete'
Plugin 'franbach/miramare'
Plugin 'jaxbot/semantic-highlight.vim'

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

let g:NERDTreeDirArrows=0
let python_highlight_all=1
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:go_def_mode='gocode'
let g:go_info_mode='gocode'
let g:go_fmt_command = "goimports"    
let g:go_auto_type_info = 1           
let g:NERDTreeWinSize=40
let g:gruvbox_contrast = 'hard'
let g:lightline = {
     \ 'colorscheme': 'gruvbox',
     \ }
colorscheme gruvbox

highlight LineNr ctermfg=black

au VimEnter * NERDTree

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


autocmd Filetype php setlocal tabstop=4 shiftwidth=4 softtabstop=0 expandtab smarttab
autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab smarttab
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
