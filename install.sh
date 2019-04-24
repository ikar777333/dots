#!/usr/bin/bash

mkdir $HOME/dots_backup

for d in $(find . -mindepth 2 -type f);
do
    v1="$d"
    [[ $v1 =~ ./(.*)/(\..*) ]]
    v2=${BASH_REMATCH[1]}
    v3=${BASH_REMATCH[2]}

    if[ -e "$HOME/$v3"];
    then 
        mkdir -p $HOME/dots_backup/$v3
        mv $HOME/$v3* $HOME/dots_backup/$v3
    fi
    stow $v3
done