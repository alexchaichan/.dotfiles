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
zsh_add_plugin 'ohmyzsh/ohmyzsh'
zsh_add_plugin 'zsh-users/zsh-completions'
git clone https://github.com/dracula/zsh-syntax-highlighting.git $ZDOTDIR/dracula-zsh-syntax-highlighting

# nvim

function vim_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$VDOTDIR/pack/plugins/start/$PLUGIN_NAME"
}

vim_add_plugin "nvim-lua/popup.nvim"
vim_add_plugin "nvim-lua/plenary.nvim"
vim_add_plugin "windwp/nvim-autopairs"
vim_add_plugin "numToStr/Comment.nvim"
vim_add_plugin "kyazdani42/nvim-web-devicons"
vim_add_plugin "kyazdani42/nvim-tree.lua"
vim_add_plugin "akinsho/bufferline.nvim"
vim_add_plugin "moll/vim-bbye"
vim_add_plugin "nvim-lualine/lualine.nvim"
vim_add_plugin "lewis6991/impatient.nvim"
vim_add_plugin "lukas-reineke/indent-blankline.nvim"
vim_add_plugin "antoinemadec/FixCursorHold.nvim"
vim_add_plugin "hrsh7th/nvim-cmp"
vim_add_plugin "hrsh7th/cmp-buffer"
vim_add_plugin "hrsh7th/cmp-path"
vim_add_plugin "hrsh7th/cmp-cmdline"
vim_add_plugin "saadparwaiz1/cmp_luasnip"
vim_add_plugin "hrsh7th/cmp-nvim-lsp"
vim_add_plugin "L3MON4D3/LuaSnip"
vim_add_plugin "rafamadriz/friendly-snippets"
vim_add_plugin "neovim/nvim-lspconfig"
vim_add_plugin "glepnir/lspsaga.nvim"
vim_add_plugin "williamboman/nvim-lsp-installer"
vim_add_plugin "tamago324/nlsp-settings.nvim"
vim_add_plugin "jose-elias-alvarez/null-ls.nvim"
vim_add_plugin "nvim-telescope/telescope.nvim"
vim_add_plugin "nvim-treesitter/nvim-treesitter"
vim_add_plugin "JoosepAlviste/nvim-ts-context-commentstring"
vim_add_plugin "lewis6991/gitsigns.nvim"
vim_add_plugin 'gaalcaras/ncm-R'
vim_add_plugin 'ncm2/ncm2'
vim_add_plugin 'ncm2/ncm2-bufword'
vim_add_plugin 'ncm2/ncm2-path'
vim_add_plugin 'jalvesaq/Nvim-R'
vim_add_plugin 'roxma/nvim-yarp'
vim_add_plugin 'ncm2/ncm2-jedi'
vim_add_plugin 'kevinhwang91/rnvimr'
vim_add_plugin 'dracula/vim'
vim_add_plugin 'iamcco/markdown-preview.nvim'

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
