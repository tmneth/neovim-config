" Delete a word backwards
nnoremap dw vb"_d

" Select all
nmap <C-a> gg<S-v>G

" Focus NERDTree
nmap <F1> :NERDTreeFocus<CR>

" Refresh NERDTree
nmap <F2> :NERDTreeRefreshRoot<CR>

" Toggle NERDTree
nmap <F3> :NERDTreeToggle<CR>

" Run prettier on Ctrl + Alt + l
nnoremap <C-A-l> :Prettier<CR>

" Edit init.vim
map <leader>i :e! ~/.config/nvim/init.vim<cr>

" Edit plug.vim
map <leader>o :e! ~/.config/nvim/plug.vim<cr>

" Edit maps.vim
map <leader>p :e! ~/.config/nvim/maps.vim<cr>
