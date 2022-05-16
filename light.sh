# ask for the administrator password upfront
sudo -v

# keep-alive: update existing `sudo` time stamp until `.bootstap.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# check for os type
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     os=linux;;
    Darwin*)    os=osx;;
    CYGWIN*)    os=cygwin;;
    MINGW*)     os=mingw;;
    *)          os="UNKNOWN:${unameOut}"
esac

# create $ directorys
export HOME="$(echo -n $(bash -c "cd ~${USER} && pwd"))"
export DOTFILES=$HOME/.dotfiles
export ZDOTDIR=$HOME/zsh
export VDOTDIR=$HOME/.config/nvim
export TDOTDIR=$HOME/.tmux

# create directories
mkdir $HOME/.config

# stowfile

# zsh
mkdir ~/.zsh_plugins

if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/zsh/.zshrc_mac ~/.zshrc
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/zsh/.zshrc_linux ~/.zshrc
fi

# alacritty
if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/alacritty/osx_alacritty.yml ~/.config/alacritty.yml
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/alacritty/arch_alacritty.yml ~/.config/alacritty.yml
fi

# nvim
mkdir ~/.config/nvim && mkdir ~/.config/nvim/pack/ && mkdir ~/.config/nvim/pack/plugins/ && mkdir ~/.config/nvim/pack/plugins/start && mkdir ~/.config/nvim/pack/plugins/opt && mkdir ~/.config/nvim/spell && ln -sf ~/.dotfiles/nvim/nvim.lua/* ~/.config/nvim && ln -sf ~/.dotfiles/snippets/ ~/.config/nvim

# tmux
mkdir ~/.tmux && mkdir ~/.tmux/plugins

if [[ "$os" == "osx" ]]; then
	ln -sf ~/.dotfiles/tmux/.osx_tmux.conf ~/.tmux.conf
elif [[ "$os" == "linux" ]]; then
	ln -sf ~/.dotfiles/tmux/.arch_tmux.conf ~/.tmux.conf
fi

# qutebrowser
if [[ "$os" == "osx" ]]; then
	mkdir ~/.qutebrowser
	ln -sf ~/.dotfiles/qutebrowser/.qutebrowser/* ~/.qutebrowser
	git clone https://github.com/dracula/qutebrowser-dracula-theme.git ~/.qutebrowser/dracula
elif [[ "$os" == "linux" ]]; then
	mkdir ~/.config/qutebrowser
	ln -sf ~/.dotfiles/qutebrowser/.qutebrowser/* ~/.config/qutebrowser
	git clone https://github.com/dracula/qutebrowser-dracula-theme.git ~/.config/qutebrowser/dracula
fi

# qutebrowser bookmarks
ln -sf ~/.dotfiles/qutebrowser/.qutebrowser/bookmarks/urls ~/

# plugins

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
git clone https://github.com/dracula/zsh-syntax-highlighting.git $ZDOTDIR/dracula-zsh-syntax-highlighting
git clone --depth 1 --filter=blob:none --no-checkout https://github.com/ohmyzsh/ohmyzsh $ZDOTDIR/zsh-vi-mode ; cd $ZDOTDIR/zsh-vi-mode ; git checkout master -- plugins/vi-mode ; cd
git clone --depth 1 --filter=blob:none --no-checkout https://github.com/junegunn/fzf.git $ZDOTDIR/zsh-fzf ; cd $ZDOTDIR/zsh-fzf; git checkout master -- shell ; cd

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

# programs

brew install bat neovim ranger tmux zsh

brew install --casl alacritty

# make zsh default shell
if [ -z "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  chsh -s "$(which zsh)"
fi
