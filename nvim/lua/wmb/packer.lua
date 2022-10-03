-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'morhetz/gruvbox'
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP THis is required to make my vim the best vim ever
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'tpope/vim-surround'
    use 'gmarik/Vundle.vim'
    use 'posva/vim-vue'
    use 'bagrat/vim-workspace'
    use 'itchyny/lightline.vim'
    use 'mxw/vim-jsx'
    use 'vimwiki/vimwiki'
    use 'scrooloose/nerdtree'
    use 'pangloss/vim-javascript'
    use 'vim-syntastic/syntastic'
    use 'sts10/vim-pink-moon'
    use 'nvie/vim-flake8'
    use 'tmsvg/pear-tree'
    use 'majutsushi/tagbar'
    use 'leafOfTree/vim-vue-plugin'
    use 'StanAngeloff/php.vim'
    use 'shawncplus/phpcomplete.vim'
    use 'godlygeek/tabular'
    use 'plasticboy/vim-markdown'
    use 'leafgarland/typescript-vim'
    use 'ianks/vim-tsx'
    use 'nelsyeung/twig.vim'
    use 'octol/vim-cpp-enhanced-highlight'
    use 'christoomey/vim-tmux-navigator'
    use 'cespare/vim-toml'
    use 'burnettk/vim-angular'
    use 'junegunn/fzf' --, { 'do': { -> fzf#install() } }
    use 'junegunn/fzf.vim'
    use 'lifepillar/vim-mucomplete'
    use 'franbach/miramare'
    use 'jaxbot/semantic-highlight.vim'
    -- use 'neoclide/coc.nvim' -- , {'branch': 'release'}
    use {
        'fatih/vim-go',
        run = ':GoUpdateBinaries'
    }-- , { 'do': ':GoUpdateBinaries' }
    use 'mcchrish/nnn.vim'
    use 'beanworks/vim-phpfmt'
    use 'Olical/conjure' --, {'tag': 'v4.24.1'}
    use 'hashivim/vim-terraform'
    use 'jceb/vim-orgmode'
    use 'jparise/vim-graphql'
end)
