# !/bin/bash

# Check if existing nvim config is present
if [ -f ~/.config/nvim/init.vim ] || [ -f ~/.config/nvim/init.lua ]; then
    echo '[-] Existing nvim init config file found in ~/.config/nvim/. Please backup or remove it first before running this script.'
    exit 1
fi

# Install dependencies
echo "[*] Installing dependencies..."
sudo paru -S neovim lua nerd-fonts-complete npm --noconfirm --needed

# Install vim-plug plugin manager
echo '[*] Installing vim-plug'
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

# Install NeoSolarized vim theme
echo '[*] Installing NeoSolarized theme'
curl -fLo ~/.config/nvim/colors/NeoSolarized.vim --create-dirs \
https://raw.githubusercontent.com/overcache/NeoSolarized/master/colors/NeoSolarized.vim

# Curl config .vim files from the repository
curl https://raw.githubusercontent.com/tmneth/neovim-config/main/config/init.vim  > ~/.config/nvim/init.vim
curl https://raw.githubusercontent.com/tmneth/neovim-config/main/config/plug.vim  > ~/.config/nvim/plug.vim
curl https://raw.githubusercontent.com/tmneth/neovim-config/main/config/maps.vim  > ~/.config/nvim/maps.vim

# Install plugins from plug.vim
echo -e '[*] Running :PlugInstall...'
nvim +'PlugInstall --sync' +qa

# Add autocompletion for selected languages via :CocInstall
echo -e '[*] Running :CocInstall...'
nvim +'CocInstall --sync coc-html coc-css coc-tsserver coc-eslint coc-tslint coc-tslint-plugin coc-json' +qa
nvim +CocUpdateSync +qa

# Add node modules to coc.nvim & vim-prettier
npm install --prefix ~/.local/share/nvim/plugged/{coc.nvim,vim-prettier}

# Update the system
sudo pacman -Syu --noconfirm --needed