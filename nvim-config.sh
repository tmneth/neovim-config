# !/bin/bash

# sudo paru -S neovim nerd-fonts-complete lua ccls yarn

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

curl -fLo ~/.config/nvim/colors/NeoSolarized.vim --create-dirs \
https://raw.githubusercontent.com/overcache/NeoSolarized/master/colors/NeoSolarized.vim

git clone https://github.com/tmneth/neovim-config
mv neovim-config/config/{init.vim,plug.vim,maps.vim} ~/.config/nvim

nvim +'PlugInstall --sync' +qa
nvim +'CocInstall --sync coc-html coc-css coc-tsserver coc-eslint coc-tslint coc-tslint-plugin coc-json' +qa
nvim +CocUpdateSync +qa

cd ~/.local/share/nvim/plugged/coc.nvim && yarn install
cd ~/.local/share/nvim/plugged/vim-prettier && yarn install