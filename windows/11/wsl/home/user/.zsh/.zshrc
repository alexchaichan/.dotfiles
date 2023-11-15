#      ___           ___           ___
#     /  /\         /  /\         /__/\
#    /  /::|       /  /:/_        \  \:\
#   /  /:/:|      /  /:/ /\        \__\:\
#  /  /:/|:|__   /  /:/ /::\   ___ /  /::\
# /__/:/ |:| /\ /__/:/ /:/\:\ /__/\  /:/\:\
# \__\/  |:|/:/ \  \:\/:/~/:/ \  \:\/:/__\/
#     |  |:/:/   \  \::/ /:/   \  \::/
#     |  |::/     \__\/ /:/     \  \:\
#     |  |:/        /__/:/       \  \:\
#     |__|/         \__\/         \__\/


# End of lines configured by zsh-newuser-install

# check for os type
unameOut="$(uname -s)"

case "${unameOut}" in
    Linux*)     os=linux;;
    Darwin*)    os=osx;;
    CYGWIN*)    os=cygwin;;
    MINGW*)     os=mingw;;
    *)          os="UNKNOWN:${unameOut}"
esac

if [[ "$os" == "osx" || "$os" == "linux" ]]; then
  export HOME="$(echo -n $(bash -c "cd ~${USER} && pwd"))"
fi
export DOTFILES=$HOME/.dotfiles
export CONFIG=$HOME/.config
export DROPBOX=$HOME/Dropbox
export ZDOTDIR=$HOME/.zsh
export VDOTDIR=$CONFIG/nvim
export TDOTDIR=$HOME/.tmux
if [[ "$os" == "osx" ]]; then
    export SUBL=$HOME/Library/Application\ Support/Sublime\ Text
elif [[ "$os" == "linux" ]]; then
    export SUBL=$CONFIG\ Support/Sublime\ Text
fi

source $ZDOTDIR/dracula-zsh-syntax-highlighting/zsh-syntax-highlighting.sh
source $ZDOTDIR/ohmyzsh/plugins/vi-mode/vi-mode.plugin.zsh
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/zsh-autopair/autopair.zsh
source $ZDOTDIR/ohmyzsh/plugins/web-search/web-search.plugin.zsh
source $DOTFILES/zsh/zsh/variables.zsh

  source $ZDOTDIR/powerlevel10k/powerlevel10k.zsh-theme

  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi

  # To customize prompt, run `p10k configure` or edit ~/.zsh/.p10k.zsh.
  [[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh

# default editor
export EDITOR=nvim

# terminal
export TERM=screen-256color

source $DOTFILES/zsh/zsh/functions.zsh
source $ZDOTDIR/ohmyzsh/lib/functions.zsh


# setup a custom completion directory
fpath=($ZDOTDIR/zsh-completions/src $fpath)

# enable completion system
autoload compinit

# initalize all completions on $fpath an ignore (-i) all insecure files and directory
compinit -i

# make space between commands
precmd() { print "" }

# zsh history
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# enable zmv
autoload zmv

bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

cd $HOME

