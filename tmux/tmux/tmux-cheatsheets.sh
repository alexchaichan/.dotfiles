#!/usr/bin/env bash
lang=`ls $HOME/cheatsheets/ | fzf`;

if [[ "$lang" == "cht" ]]; then

  read -p "Enter Query: " query

  query=$query

else

  selected=`ls $HOME/cheatsheets/$lang | fzf`

fi

if [[ "$selected" == *pdf ]]; then

   zathura $HOME/cheatsheets/$lang/$selected;

 else

  tmux neww zsh -c  "bat $HOME/cheatsheets/$lang/$selected & while [ : ]; do sleep 1; done"

fi

if [[ "$lang" == "cht" ]]; then

  tmux neww zsh -c "curl -s cht.sh/$query | bat & while [ : ]; do sleep 1; done"

fi
