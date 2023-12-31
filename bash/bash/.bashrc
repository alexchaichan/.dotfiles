#                    ___           ___           ___
#     _____         /  /\         /  /\         /__/\
#    /  /::\       /  /::\       /  /:/_        \  \:\
#   /  /:/\:\     /  /:/\:\     /  /:/ /\        \__\:\
#  /  /:/~/::\   /  /:/~/::\   /  /:/ /::\   ___ /  /::\
# /__/:/ /:/\:| /__/:/ /:/\:\ /__/:/ /:/\:\ /__/\  /:/\:\
# \  \:\/:/~/:/ \  \:\/:/__\/ \  \:\/:/~/:/ \  \:\/:/__\/
#  \  \::/ /:/   \  \::/       \  \::/ /:/   \  \::/
#   \  \:\/:/     \  \:\        \__\/ /:/     \  \:\
#    \  \::/       \  \:\         /__/:/       \  \:\
#     \__\/         \__\/         \__\/         \__\/

# check for os type
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     os=linux;;
    Darwin*)    os=osx;;
    CYGWIN*)    os=cygwin;;
    MINGW*)     os=mingw;;
    *)          os="UNKNOWN:${unameOut}"
esac

if [[ "$os" == "linux" ]]; then
  echo 'MOUSE ON!!!'
  bluetoothctl connect 04:4B:ED:D2:45:CF
  pkill spotifyd
	startx
elif [[ "$os" == "cygwin" ]]; then
	zsh
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
