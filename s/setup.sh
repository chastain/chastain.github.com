#!/bin/bash

declare -a dirs=(
                ~/Books
                ~/Books/programming
                ~/Books/programming/shell
                ~/Source
                ~/Source/dotnet
                ~/Source/rust 
                ~/Source/go
                ~/Source/shell
                )

## loop through the dirs array and create them if needed
echo Creating any required directories...
for dir in "${dirs[@]}"; do
    if [ ! -d "$dir" ]; then
      mkdir "$dir"
      echo "+ $dir"
    fi
done

## now download programming library books
echo Downloading some books...
curl http://zsh.sourceforge.net/Doc/zsh_us.pdf > ~/Books/programming/shell/zsh_us.pdf

cd ~/Source/shell
git clone git@github.com:chastain/linux-docs.git
