# !/bin/bash

# verifying if vim folder already exists
if [ ! -d ~/.vim/ ]; then
  mkdir ~/.vim
fi

# cloning repository
git clone https://github.com/cristianossd/myvimfiles.git ~/.vim
mv ~/.vim/.vimrc ~/.vimrc

# getting plugins
cd ~/.vim
git submodule update \--init \--recursive

echo -e "\nVim files was successfully configured!"
