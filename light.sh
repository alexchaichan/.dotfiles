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

source $DOTFILES/plugins.sh

# programs

brew install bat neovim ranger tmux zsh

brew install --casl alacritty

# make zsh default shell
if [ -z "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  chsh -s "$(which zsh)"
fi
