# myvim

使用了`vundle`来安装插件，`vundle`详见

https://github.com/VundleVim/Vundle.vim/blob/master/README_ZH_CN.md

参考

```shell
git clone https://github.com/hgxjune/myvim.git ~/.vim/hgxjune/myvim.git

sh ~/.vim/hgxjune/myvim.git/install.sh
```

```脚本内容
#! /bin/bash

cd ~

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ~/.vim/hgxjune/myvim.git/vimrc ~/.vimrc

cp ~/.vim/hgxjune/myvim.git/tmux.conf ~/.tmux.conf

vim +PluginInstall +qall
```
