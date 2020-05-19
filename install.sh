#! /bin/bash

cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ~/.vim/hgxjune/myvim.git/vimrc ~/.vimrc
cp ~/.vim/hgxjune/myvim.git/tmux.conf ~/.tmux.conf
vim +PluginInstall +qall
