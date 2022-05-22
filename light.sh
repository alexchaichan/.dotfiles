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
export ZDOTDIR=$HOME/.zsh_plugins
export VDOTDIR=$HOME/.config/nvim
export TDOTDIR=$HOME/.tmux
export CONFIG=$HOME/.config

# create directories
mkdir $CONFIG

# stowfile

# zsh
mkdir $ZDOTDIR

ln -sf $DOTFILES/zsh/zsh/.zshrc $HOME/


# alacritty
if [[ "$os" == "osx" ]]; then
	ln -sf $DOTFILES/alacritty/alacritty/osx_alacritty.yml $CONFIG/alacritty.yml
elif [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/alacritty/alacritty/arch_alacritty.yml $CONFIG/alacritty.yml
fi

# nvim
mkdir $CONFIG/nvim && mkdir $CONFIG/nvim/pack/ && mkdir $CONFIG/nvim/pack/plugins/ && mkdir $CONFIG/nvim/pack/plugins/start && mkdir $CONFIG/nvim/pack/plugins/opt && mkdir $CONFIG/nvim/spell && ln -sf ~/.dotfiles/nvim/nvim.lua/* $CONFIG/nvim && ln -sf ~/.dotfiles/snippets/ $CONFIG/nvim

# tmux
mkdir $TDOTDIR && mkdir $TDOTDIR/plugins && ln -sf $DOTFILES/tmux/tmux/.tmux.conf $HOME/

# qutebrowser
if [[ "$os" == "osx" ]]; then
	mkdir $HOME/.qutebrowser
	ln -sf $HOME/.dotfiles/qutebrowser/.qutebrowser/* $HOME/.qutebrowser
	git clone https://github.com/dracula/qutebrowser-dracula-theme.git $HOME/.qutebrowser/dracula
elif [[ "$os" == "linux" ]]; then
	mkdir $CONFIG/qutebrowser
	ln -sf $HOME/.dotfiles/qutebrowser/.qutebrowser/* $CONFIG/qutebrowser
	git clone https://github.com/dracula/qutebrowser-dracula-theme.git $CONFIG/qutebrowser/dracula
fi

# qutebrowser bookmarks
ln -sf $DOTFILES/qutebrowser/.qutebrowser/bookmarks/urls $HOME/

# plugins

source $DOTFILES/plugins.sh

# programs
if [[ "$os" == "osx" ]]; then
	brew install bat neovim ranger tmux zsh && brew install --casl alacritty
elif [[ "$os" == "linux" ]]; then
	pacman -S bat neovim ranger tmux zsh alacritty
fi

# make zsh default shell
if [ -z "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  chsh -s "$(which zsh)"
fi
