# !/bin/bash

# Check if existing nvim config is present and make backup
if [ -f ~/.config/nvim/init.vim ] || [ -f ~/.config/nvim/init.lua ]; then
    echo '[-] Existing nvim init config file found in ~/.config/nvim. Making a backup...'
    mv ~/.config/nvim ~/.config/nvim.backup
    echo '[*] You can find a backup of your config in ~/.config/nvim.backup'  
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

# Update coc.nvim language servers
nvim +CocUpdateSync +qa

# Build coc.nvim & vim-prettier
npm install --prefix ~/.local/share/nvim/plugged/{coc.nvim,vim-prettier}
npm run build --prefix ~/.local/share/nvim/plugged/{coc.nvim,vim-prettier}

# Update the system
sudo pacman -Syu --noconfirm --needed
