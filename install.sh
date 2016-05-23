#!/bin/bash
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone git://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree/
