# myvim

使用了`vundle`来安装插件，`vundle`详见

https://github.com/VundleVim/Vundle.vim/blob/master/README_ZH_CN.md

参考

```shell
git clone https://github.com/hgxjune/myvim.git ~/.vim/hgxjune/myvim.git

sh ~/.vim/hgxjune/myvim.git/install.sh
```

#### 脚本内容
```shell
#! /bin/bash

cd ~

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ~/.vim/hgxjune/myvim.git/vimrc ~/.vimrc

cp ~/.vim/hgxjune/myvim.git/tmux.conf ~/.tmux.conf

vim +PluginInstall +qall
```

#### Vundle常用命令
```shell
:BundleList             - 列举列表(也就是.vimrc)中配置的所有插件
:BundleInstall          - 安装列表中的全部插件
:BundleInstall!         - 更新列表中的全部插件
:BundleSearch foo       - 查找foo插件
:BundleSearch! foo      - 刷新foo插件缓存
:BundleClean            - 清除列表中没有的插件
:BundleClean!           - 清除列表中没有的插件
```
