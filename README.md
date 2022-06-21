# Neovim configuration

My neovim configuration for web development related stuff

## Plugins

-   [vim-fugitive](https://github.com/tpope/vim-fugitive) - awesome git wrapper
-   [auto-pairs](https://github.com/jiangmiao/auto-pairs) - insert or delete brackets, parens, quotes in pair
-   [nerdtree](https://github.com/preservim/nerdtree) - file system explorer
-   [vim-css-color](https://github.com/ap/vim-css-color) - colors preview while editing
-   [vim-devicons](https://github.com/ryanoasis/vim-devicons) - file type icons
-   [tagbar](https://github.com/preservim/tagbar) - tags in a window, ordered by scope
-   [vim-multiple-cursors](https://github.com/mg979/vim-visual-multi) - multiple cursors
-   [coc.nvim](https://github.com/neoclide/coc.nvim) - instant increment completion
-   [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) - markdown preview
-   [vim-less](https://github.com/groenewege/vim-less) - vim syntax for LESS (dynamic CSS)
-   [vim-prettier](https://github.com/prettier/vim-prettier) - syntax formatting with prettier

## Setup

### Arch linux

Simply run `install.sh` script

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/tmneth/neovim-config/main/install.sh)"
```

### Manual setup

1. Install [Neovim](https://github.com/neovim/neovim/releases/latest) and [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)

2. Make a backup of your current `nvim` folder

```term
mv ~/.config/nvim ~/.config/nvim.backup
```

3. Clone repository and place .vim files to ~/.config/nvim

```term
git clone https://github.com/tmneth/neovim-config.git

mv neovim-config/config/*.vim ~/.config/nvim
```

4. Install [NeoSolarized](https://github.com/overcache/NeoSolarized) color theme

```term
curl -fLo ~/.config/nvim/colors/NeoSolarized.vim --create-dirs \
https://raw.githubusercontent.com/overcache/NeoSolarized/master/colors/NeoSolarized.vim\
```

5. Install [vim-plug](https://github.com/junegunn/vim-plug) for plugin managment

```term
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

6. Run Neovim with :PlugInstall

```term
nvim +'PlugInstall --sync' +qa
```
