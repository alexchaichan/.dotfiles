#!/usr/bin/env bash

function vim_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$VDOTDIR/pack/plugins/start/$PLUGIN_NAME"
}

vim_add_plugin 'dense-analysis/ale'
vim_add_plugin 'neoclide/coc.nvim'
vim_add_plugin 'chrisbra/csv.vim'
vim_add_plugin 'junegunn/fzf.vim'
vim_add_plugin 'jupyter-vim/jupyter-vim'
vim_add_plugin 'iamcco/markdown-preview.vim'
vim_add_plugin 'gaalcaras/ncm-R'
vim_add_plugin 'ncm2/ncm2'
vim_add_plugin 'ncm2/ncm2-bufword'
vim_add_plugin 'ncm2/ncm2-jedi'
vim_add_plugin 'ncm2/ncm2-path'
vim_add_plugin 'preservim/nerdtree'
vim_add_plugin 'jalvesaq/Nvim-R'
vim_add_plugin 'nvim-treesitter/nvim-treesitter'
vim_add_plugin 'roxma/nvim-yarp'
vim_add_plugin 'nvim-lua/plenary.nvim'
vim_add_plugin 'kevinhwang91/rnvimr'
vim_add_plugin 'nvim-telescope/telescope.nvim'
vim_add_plugin 'dracula/vim'
vim_add_plugin 'vim-airline/vim-airline'
vim_add_plugin 'tpope/vim-commentary'
vim_add_plugin 'sheerun/vim-polyglot'
vim_add_plugin 'honza/vim-snippets'
vim_add_plugin 'dhruvasagar/vim-table-mode'
vim_add_plugin 'glepnir/dashboard-nvim'
