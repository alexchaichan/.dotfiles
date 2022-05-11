#!/usr/bin/env bash

# zsh

function zsh_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$ZDOTDIR/$PLUGIN_NAME"
}

zsh_add_plugin 'hlissner/zsh-autopair'
zsh_add_plugin 'zsh-users/zsh-completions'
zsh_add_plugin 'romkatv/powerlevel10k'
zsh_add_plugin 'zsh-users/zsh-syntax-highlighting'
zsh_add_plugin 'zsh-users/zsh-autosuggestions'

# nvim

function vim_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$VDOTDIR/pack/plugins/start/$PLUGIN_NAME"
}

vim_add_plugin "nvim-lua/popup.nvim" # an implementation of the Popup API from vim in Neovim
vim_add_plugin "nvim-lua/plenary.nvim" # useful lua functions used ny lots of plugins
vim_add_plugin "windwp/nvim-autopairs" # autopairs, integrates with both cmp and treesitter
# comments
vim_add_plugin "numToStr/Comment.nvim"
vim_add_plugin "kyazdani42/nvim-web-devicons"
# tree
vim_add_plugin "kyazdani42/nvim-tree.lua"
vim_add_plugin "akinsho/bufferline.nvim"
vim_add_plugin "moll/vim-bbye"
# lualine / lightline / airline
vim_add_plugin "nvim-lualine/lualine.nvim"
vim_add_plugin "ahmedkhalf/project.nvim"
# load faster vim plugins
vim_add_plugin "lewis6991/impatient.nvim"
vim_add_plugin "lukas-reineke/indent-blankline.nvim"
# dashboard
vim_add_plugin "goolord/alpha-nvim"
vim_add_plugin "antoinemadec/FixCursorHold.nvim" # this is needed to fix lsp doc highlight
vim_add_plugin "folke/which-key.nvim"
# completion
vim_add_plugin "hrsh7th/nvim-cmp" # the  plugin
vim_add_plugin "hrsh7th/cmp-buffer" # buffer completions
vim_add_plugin "hrsh7th/cmp-path" # path completions
vim_add_plugin "hrsh7th/cmp-cmdline" # cmdline completions
vim_add_plugin "saadparwaiz1/cmp_luasnip" # snippet completions
vim_add_plugin "hrsh7th/cmp-nvim-lsp"
# snippets
vim_add_plugin "L3MON4D3/LuaSnip"
# lsp
vim_add_plugin "rafamadriz/friendly-snippets" # a bunch of snippets to use
vim_add_plugin "neovim/nvim-lspconfig" # enable LSP
vim_add_plugin "williamboman/nvim-lsp-installer" # simple to use language server installer
vim_add_plugin "tamago324/nlsp-settings.nvim" # language server settings defined in json for
vim_add_plugin "jose-elias-alvarez/null-ls.nvim" # for formatters and linters
# telescope for searching
vim_add_plugin "nvim-telescope/telescope.nvim"
# treesitter syntaxhiglighting
vim_add_plugin "nvim-treesitter/nvim-treesitter"
#
vim_add_plugin "JoosepAlviste/nvim-ts-context-commentstring"
# git symbols
vim_add_plugin "lewis6991/gitsigns.nvim"
# R
vim_add_plugin 'gaalcaras/ncm-R'
vim_add_plugin 'ncm2/ncm2'
vim_add_plugin 'ncm2/ncm2-bufword'
vim_add_plugin 'ncm2/ncm2-path'
vim_add_plugin 'jalvesaq/Nvim-R'
vim_add_plugin 'roxma/nvim-yarp'
# python
vim_add_plugin 'ncm2/ncm2-jedi'
# ranger
vim_add_plugin 'kevinhwang91/rnvimr'
# dracula
vim_add_plugin 'dracula/vim'

# tmux

function tmux_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$TDOTDIR/plugins/$PLUGIN_NAME"
}

tmux_add_plugin 'tmux-plugins/tmux-battery'
tmux_add_plugin 'tmux-plugins/tmux-copycat'
tmux_add_plugin 'tmux-plugins/tmux-cpu'
tmux_add_plugin 'tmux-plugins/tmux-maildir-counter'
tmux_add_plugin 'tmux-plugins/tmux-newsboat'
tmux_add_plugin 'tmux-plugins/tmux-online-status'
tmux_add_plugin 'tmux-plugins/tmux-open'
tmux_add_plugin 'tmux-plugins/tmux-sensible'
tmux_add_plugin 'tmux-plugins/tmux-sidebar'
tmux_add_plugin 'tmux-plugins/tmux-urlview'
tmux_add_plugin 'tmux-plugins/tmux-yank'
tmux_add_plugin 'jaclu/tmux-menus'
tmux_add_plugin 'xamut/tmux-weather'
tmux_add_plugin 'schasse/tmux-jump'
