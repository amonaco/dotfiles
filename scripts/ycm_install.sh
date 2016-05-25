#!/bin/bash
# git config --global url."https://".insteadOf git://
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd - ; cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
