- create directories

```
export HOME="$(echo -n $(bash -c "cd ~${USER} && pwd"))"
export VDOTDIR=$HOME/.config/nvim

mkdir $VDOTDIR/pack/ && mkdir $VDOTDIR/pack/plugins/ && mkdir $VDOTDIR/pack/plugins/start && mkdir $VDOTDIR/pack/plugins/opt && mkdir $VDOTDIR/spell
```


- clone only nvim

`git clone --depth 1 --filter=blob:none --no-checkout https://github.com/alexchaichan/.dotfiles.git $VDOTDIR ; cd $VDOTDIR ; git checkout main -- nvim/nvim.lua ; cd && mv $VDOTDIR/nvim/nvim.lua ~/.config && rm $VDOTDIR && mv ~/.config/nvim.lua ~/.config/nvim`

- install all plugins

```
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
vim_add_plugin "tami5/lspsaga.nvim"
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
vim_add_plugin 'ThePrimeagen/harpoon'
```
