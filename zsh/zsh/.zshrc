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

# check for os type
unameOut="$(uname -s)"

case "${unameOut}" in
    Linux*)     os=linux;;
    Darwin*)    os=osx;;
    CYGWIN*)    os=cygwin;;
    MINGW*)     os=mingw;;
    *)          os="UNKNOWN:${unameOut}"
esac

####################################################################################
# create $ directories                                                             #
####################################################################################

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

export PATH=/usr/local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/bin:$PATH


if [[ "$os" == "osx" ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

####################################################################################
# pyenv / pipenv                                                                   #
####################################################################################

export PYENV_ROOT="$HOME/.pyenv"

command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# -U eliminates duplicates.
export -U PATH path         
path=( 
    $PYENV_ROOT/{bin,shims} 
    $path
)

####################################################################################
# pyenv / pipenv                                                                   #
####################################################################################

if [[ "$os" == "linux" ]]; then

    export RENV_ROOT="$HOME/.renv"
    export PATH="$RENV_ROOT/bin:$PATH"

    if command -v renv 1>/dev/null 2>&1; then
      eval "$(renv init -)"
    fi
    
fi

####################################################################################


#If you need to have openjdk first in your PATH, run:
# export PATH="/usr/local/opt/openjdk/bin:$PATH"

#For compilers to find openjdk you may need to set:
# export CPPFLAGS="-I/usr/local/opt/openjdk/include"

# export nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# default editor
export EDITOR=nvim

# terminal
export TERM=screen-256color

# source plugins
source $ZDOTDIR/dracula-zsh-syntax-highlighting/zsh-syntax-highlighting.sh
source $ZDOTDIR/ohmyzsh/plugins/vi-mode/vi-mode.plugin.zsh
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/zsh-autopair/autopair.zsh
source $ZDOTDIR/ohmyzsh/plugins/web-search/web-search.plugin.zsh
source $DOTFILES/zsh/zsh/variables.zsh

# functions
source $DOTFILES/zsh/zsh/functions.zsh
source $ZDOTDIR/ohmyzsh/lib/functions.zsh

# fzf
if [[ "$os" == "osx" ]]; then
 	source /usr/local/Cellar/fzf/*/shell/completion.zsh
	source /usr/local/Cellar/fzf/*/shell/key-bindings.zsh
elif [[ "$os" == "linux" ]]; then
	source /usr/share/fzf/completion.zsh
	source /usr/share/fzf/key-bindings.zsh
fi
# fzf dracula theme
export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

# set prompt (powerlevel; starship)
export PROMPTS=powerlevel

if [[ "$PROMPTS" == "powerlevel" ]]; then

  # powerlevel10k
  # Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
  # Initialization code that may require console input (password prompts, [y/n]
  # confirmations, etc.) must go above this block; everything else may go below.

  source $ZDOTDIR/powerlevel10k/powerlevel10k.zsh-theme

  if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
  fi

  # To customize prompt, run `p10k configure` or edit ~/.zsh/.p10k.zsh.
  [[ ! -f ~/.zsh/.p10k.zsh ]] || source ~/.zsh/.p10k.zsh

elif [[ "$PROMPTS" == "starship" ]]; then

  # starship
  eval "$(starship init zsh)"

fi

# setup a custom completion directory
fpath=($ZDOTDIR/zsh-completions/src $fpath)

# enable completion system
autoload compinit

# initalize all completions on $fpath an ignore (-i) all insecure files and directory
compinit -i

# make space between commands
precmd() { print "" }

# vi keybinding
bindkey -v

# zsh history
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# enable zmv
autoload zmv

####################################################################################
# keyboard                                                                         #
####################################################################################

# key-bindings
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

####################################################################################
# monitor                                                                          #
####################################################################################

# if [[ "$os" == "osx" && "$pc" == "laptop" ]]; then

# fi

####################################################################################
# anaconda                                                                         #
####################################################################################
# source $DOTFILES/zsh/zsh/anaconda.zsh

####################################################################################
# login                                                                            #
####################################################################################
pass .
