# !/bin/bash

# sudo paru -S neovim nerd-fonts-complete lua ccls 

curl -fLo   $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

git clone https://github.com/overcache/NeoSolarized.git
mv NeoSolarized/colors/NeoSolarized.vim ~/.config/nvim/colors/

mkdir ~/.config/nvim/{plugins,colors}

git clone https://github.com/tmneth/neovim-config
mv neovim-config/config/{init.vim,plug.vim,maps.vim} ~/.config/nvim

nvim +'PlugInstall --sync' +qa
nvim +'CocInstall --sync coc-tsserver coc-eslint coc-tslint coc-tslint-plugin coc-json' +qa
nvim +CocUpdateSync +qa

# cd $HOME/.local/share/nvim/plugged/coc.nvim && yarn install && yarn build