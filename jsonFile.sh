#!/usr/bin/env bash

#read file < <(find $HOME/.ethereum/ -maxdepth 2 -mindepth 1 -type f -name "*$1" | grep $1) 
read file < <(find /home/ubuntu/.ethereum/ -maxdepth 2 -mindepth 1 -type f -name "*$1" | grep $1) 
read conteudo < <(cat $file | grep $1)
#echo "$file"
echo "$conteudo"
#echo "teste$file" + $file
