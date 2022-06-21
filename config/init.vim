scriptencoding utf-8

" the encoding written to file
set fileencodings=utf-8,sjis,euc-jp,latin
" the encoding displayed
set encoding=utf-8

set nocompatible    " not compatible with vi
set history=1000    " change history to 1000
set number          " show line numbers
set title           " set terminal title
set autoindent      " automatically set indent of new line
set nobackup        " disable backups
set hlsearch        " highlight search results 
set showcmd         " show incomplete commands
set ignorecase      " case insensitive searching

set cmdheight=1     " command bar height
set laststatus=2    " show the satus line all the time
set scrolloff=10    " lines of text around cursor
set expandtab       " use spaces instead of tab characters
set tabstop=4       " the visible width of tabs
set softtabstop=4   " edit as if the tabs are 4 characters wide
set shiftwidth=4    " level of indentation


" run prettier on save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0 

" configure global coc extensions (important to put these before Plug)
let g:coc_global_extensions = [
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-tslint',
  \ 'coc-json',
  \ 'coc-emmet',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-git',
  \ ]


" show hidden files
let g:NERDTreeShowHidden=1

" theme configuration
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set background=dark
  set termguicolors
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  let g:neosolarized_termtrans=1
  runtime ./colors/NeoSolarized.vim
  colorscheme NeoSolarized
endif

runtime ./maps.vim

runtime ./plug.vim
