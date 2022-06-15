# !/bin/bash

# sudo paru -S neovim nerd-fonts-complete lua ccls npm

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

curl -fLo ~/.config/nvim/colors/NeoSolarized.vim --create-dirs \
https://raw.githubusercontent.com/overcache/NeoSolarized/master/colors/NeoSolarized.vim

curl https://raw.githubusercontent.com/tmneth/neovim-config/main/config/init.vim  > ~/.config/nvim/init.vim
curl https://raw.githubusercontent.com/tmneth/neovim-config/main/config/plug.vim  > ~/.config/nvim/plug.vim
curl https://raw.githubusercontent.com/tmneth/neovim-config/main/config/maps.vim  > ~/.config/nvim/maps.vim


nvim +'PlugInstall --sync' +qa
nvim +'CocInstall --sync coc-html coc-css coc-tsserver coc-eslint coc-tslint coc-tslint-plugin coc-json' +qa
nvim +CocUpdateSync +qa

npm install --prefix ~/.local/share/nvim/plugged/coc.nvim
npm install --prefix ~/.local/share/nvim/plugged/vim-prettier