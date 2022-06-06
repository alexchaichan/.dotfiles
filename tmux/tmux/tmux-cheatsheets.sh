#!/usr/bin/env bash
lang=`ls $HOME/cheatsheets/ | fzf`;

if [[ "$lang" == "cht" ]]; then

  selected=`bat $HOME/cheatsheets/cht/cht-languages $HOME/cheatsheets/cht/cht-command | fzf`
    if [[ -z $selected ]]; then
      exit 0
    fi

elif [[ "$lang" == "search" ]]; then

      read -p "Enter Query: " query

      query=`echo $query | tr ' ' '+'`

else

  selected=`ls $HOME/cheatsheets/$lang | fzf`

fi

if [[ "$selected" == *pdf ]]; then

   zathura $HOME/cheatsheets/$lang/$selected;

elif [[ "$selected" == *sh ]]; then

  tmux neww zsh -c  "bat $HOME/cheatsheets/$lang/$selected & while [ : ]; do sleep 1; done"

fi

if [[ "$lang" == "cht" ]]; then

  read -p "Enter Query: " query

  grep -qs "$selected" $HOME/cheatsheets/cht/cht-languages ;

      query=`echo $query | tr ' ' '+'`

      tmux neww zsh -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"

    elif [[ "$lang" == "search" ]]; then

    tmux neww zsh -c "curl -s cht.sh/$query | bat"
  fi
