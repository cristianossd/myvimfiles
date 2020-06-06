# !/bin/bash

set -e

# verifying if vim folder already exists
if [ ! -d ~/.vim/ ]; then
  mkdir ~/.vim
fi

# unix
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mv ~/.vim/.vimrc ~/.vimrc

# neovim
mkdir -p ~/.config/nvim
cp ~/.vim/init.vim ~/.config/nvim/.

echo -e "\nVim files was successfully configured!"
