#!/usr/bin/env bash
lang=`ls $HOME/cheatsheets/ | fzf`;
selected=`ls $HOME/cheatsheets/$lang | fzf` && zathura $HOME/cheatsheets/$lang/$selected;
