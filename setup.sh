#!/bin/bash

declare -a dirs=(
                ~/Setup
                ~/Setup/Books
                ~/Setup/Books/programming
                ~/Setup/Books/programming/shell
                ~/Setup/Source
                ~/Setup/Source/dotnet
                ~/Setup/Source/rust 
                ~/Setup/Source/go
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
declare -a books=(
    0132366754_Jang_book.pdf
    013865056_Dike_book.pdf
    LFS-BOOK-9.0-systemd.pdf
    Linux-101-Hacks.pdf
    Linux.Shell_.Scripting.Cookbook.pdf
    Linux_Kernel_In_A_Nutshell.tar.gz
    fta_admin_gnulinux_v1.pdf
    intro-linux.pdf
)

echo Downloading some books...
#curl http://zsh.sourceforge.net/Doc/zsh_us.pdf > ~/Setup/Books/programming/shell/zsh_us.pdf
for book in "${books[@]}"; do
  #curl http://zsh.sourceforge.net/Doc/zsh_us.pdf > ~/Setup/Books/programming/shell/zsh_us.pdf
  curl "http://zsh.sourceforge.net/Doc/$book > ~/Setup/Books/programming/shell/$book"
  echo "+ $book"
done

#cd ~/Source/shell
#git clone git@github.com:chastain/linux-docs.git
