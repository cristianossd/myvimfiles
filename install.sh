# !/bin/bash

# verifying if vim folder already exists
if [ ! -d ~/.vim/ ]; then
  mkdir ~/.vim
fi

# cloning repository
git clone https://github.com/cristianossd/myvimfiles.git ~/.vim
mv ~/.vim/.vimrc ~/.vimrc

# getting plugins
git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
git clone https://github.com/mattn/emmet-vim.git ~/.vim/bundle/emmet-vim
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
git clone git://github.com/ntpeters/vim-better-whitespace.git ~/.vim/bundle/vim-better-whitespace

echo -e "\nVim files was successfully configured!"
