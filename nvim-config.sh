# !/bin/bash

curl -fLo   $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

mkdir ~/.config/nvim/init.vim
mkdir ~/.config/nvim/after
kdir ~/.config/nvim/colors

curl --output ~/.config/nvim/init.vim https://raw.githubusercontent.com/tmneth/neovim-config/main/config/init.vim
curl --output ~/.config/nvim/plug.vim https://raw.githubusercontent.com/tmneth/neovim-config/main/config/plug.vim