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
export ZDOTDIR=$HOME/.zsh/zsh_plugins
export VDOTDIR=$HOME/.config/nvim
export TDOTDIR=$HOME/.tmux

# default editor
export EDITOR=nvim

# source plugins
source $HOME/.dotfiles/zsh/zsh-syntax-highlighting.sh
source $HOME/.dotfiles/zsh/.p10k.zsh
source $HOME/.dotfiles/zsh/functions.sh
source $HOME/.dotfiles/zsh/vi-mode.plugin.zsh
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/zsh-completions/zsh-completions.plugin.zsh
source $ZDOTDIR/powerlevel10k/powerlevel10k.zsh-theme
source $ZDOTDIR/zsh-autopair/autopair.zsh


# # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# # Initialization code that may require console input (password prompts, [y/n]
# # confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

precmd() { print "" }

bindkey -v

source ~/.dotfiles/zsh/zsh-fzf/completion.zsh
source ~/.dotfiles/zsh/zsh-fzf/key-bindings.zsh
