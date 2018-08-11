" ============================ Vundle config ============================
" 管理插件，说明
" https://github.com/VundleVim/Vundle.vim/blob/master/README_ZH_CN.md

set nocompatible              " 去除VI一致性,必须
filetype off                  " 必须

" 设置包括vundle和初始化相关的runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
"Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
"Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
"Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突    
"Plugin 'ascenator/L9', {'name': 'newL9'}

" 参考配置
" https://github.com/Witcher42/vim/blob/master/vimrc

" 自动补全
"Plugin 'Valloric/YouCompleteMe'
"    let g:NERDSpaceDelims=1

Plugin 'scrooloose/nerdcommenter'
Plugin 'The-NERD-tree'
    map <F2> :NERDTreeToggle<CR>
    imap <F2> <ESC>:NERDTreeToggle<CR>
Plugin 'ctrlp.vim'

" 图形化主题查看 https://github.com/vim-airline/vim-airline/wiki/Screenshots
Plugin 'vim-airline/vim-airline'
    " 开启tabline
    let g:airline#extensions#tabline#enabled = 1
    " tabline中当前buffer两端的分隔字符
    let g:airline#extensions#tabline#left_sep = ' '
    " tabline中未激活buffer两端的分隔字符
    let g:airline#extensions#tabline#left_alt_sep = '|'
    " tabline中buffer显示编号
    let g:airline#extensions#tabline#buffer_nr_show = 1
Plugin 'vim-airline/vim-airline-themes'
    let g:airline_theme='luna'

Plugin 'pangloss/vim-javascript'
Plugin 'jade.vim'



" 你的所有插件需要在下面这行之前
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 简要帮助文档
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后


" ============================ my config ============================
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC


"==========================================
" ProjectLink: https://github.com/wklken/vim-for-server
" Author:  wklken
" Version: 0.2
" Email: wklken@yeah.net
" BlogPost: http://www.wklken.me
" Donation: http://www.wklken.me/pages/donation.html
" ReadMe: README.md
" Last_modify: 2015-07-07
" Desc: simple vim config for server, without any plugins.
"==========================================

" leader
let mapleader = ','
let g:mapleader = ','

" syntax
"syntax on

" history : how many lines of history VIM has to remember
set history=2000

" " filetype
" filetype on
" " Enable filetype plugins
" filetype plugin on
" filetype indent on


" base
set nocompatible                " don't bother with vi compatibility
set autoread                    " reload files when changed on disk, i.e. via `git checkout`
set shortmess=atI

set magic                       " For regular expressions turn magic on
set title                       " change the terminal's title
set nobackup                    " do not keep a backup file

set novisualbell                " turn off visual bell
set noerrorbells                " don't beep
set visualbell t_vb=            " turn off error beep/flash
set t_vb=
set tm=500


" movement
set scrolloff=3                 " keep 3 lines when scrolling


" show
set ruler                       " show the current row and column
set number                      " show line numbers
set nowrap
set showcmd                     " display incomplete commands
set showmode                    " display current modes
set showmatch                   " jump to matches when entering parentheses
set matchtime=2                 " tenths of a second to show the matching parenthesis


" search
set hlsearch                    " highlight searches
set incsearch                   " do incremental searching, search as you type
set ignorecase                  " ignore case when searching
set smartcase                   " no ignorecase if Uppercase char present


" tab
set expandtab                   " expand tabs to spaces
set smarttab
set shiftround

" indent
set autoindent smartindent shiftround
set shiftwidth=4
set tabstop=4
set softtabstop=4                " insert mode tab and backspace use 4 spaces

" NOT SUPPORT
" fold
set foldenable
"set foldmethod=indent
set foldmethod=syntax
set foldlevel=99
set nofoldenable
let g:FoldMethod = 0
map <leader>zz :call ToggleFold()<cr>
fun! ToggleFold()
    if g:FoldMethod == 0
        exe "normal! zM"
        let g:FoldMethod = 1
    else
        exe "normal! zR"
        let g:FoldMethod = 0
    endif
endfun

" encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set termencoding=utf-8
set ffs=unix,dos,mac
set formatoptions+=m
set formatoptions+=B

" select & complete
set selection=inclusive
set selectmode=mouse,key

set completeopt=longest,menu
set wildmenu                           " show a navigable menu for tab completion"
set wildmode=longest,list,full
set wildignore=*.o,*~,*.pyc,*.class

" others
set backspace=indent,eol,start  " make that backspace key work the way it should
set whichwrap+=<,>,h,l

" if this not work ,make sure .viminfo is writable for you
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" NOT SUPPORT
" Enable basic mouse behavior such as resizing buffers.
set mouse=a


" ============================ theme and status line ============================

set t_Co=256

" theme
"set background=dark
colorscheme desert

" " set mark column color
" hi! link SignColumn   LineNr
" hi! link ShowMarksHLl DiffAdd
" hi! link ShowMarksHLu DiffChange
" 
" " status line
" set statusline=%<%f\ %h%m%r%=%k[%{(&fenc==\"\")?&enc:&fenc}%{(&bomb?\",BOM\":\"\")}]\ %-14.(%l,%c%V%)\ %P
" set laststatus=2   " Always show the status line - use 2 lines for the status bar

" 注释行颜色
"hi comment ctermfg=2

" show location
"set cursorcolumn
set cursorline
hi CursorLine cterm=bold ctermbg=0 ctermfg=NONE guibg=NONE guifg=NONE
hi Search     cterm=bold ctermbg=3 ctermfg=0 
hi LineNr     cterm=bold ctermbg=0 ctermfg=4
hi Constant   cterm=NONE ctermfg=1
"hi PreProc    cterm=bold ctermfg=4

" ============================ specific file type ===========================

" autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
" autocmd FileType ruby set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
" autocmd BufRead,BufNew *.md,*.mkd,*.markdown  set filetype=markdown.mkd

autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    " .sh
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    " python
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call append(1, "\# encoding: utf-8")
    endif

"     normal G
"     normal o
"     normal o
endfunc

" autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
" fun! <SID>StripTrailingWhitespaces()
"     let l = line(".")
"     let c = col(".")
"     %s/\s\+$//e
"     call cursor(l, c)
" endfun

" ============================ key map ============================

"nnoremap k gk
"nnoremap gk k
"nnoremap j gj
"nnoremap gj j

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"nnoremap <F2> :set nu! nu?<CR>
nnoremap <F3> :set list! list?<CR>
nnoremap <F4> :set wrap! wrap?<CR>
set pastetoggle=<F5>            "    when in insert mode, press <F5> to go to
                                "    paste mode, where you can paste mass data
                                "    that won't be autoindented
au InsertLeave * set nopaste
nnoremap <F6> :exec exists('syntax_on') ? 'syn off' : 'syn on'<CR>

" kj 替换 Esc
"inoremap kj <Esc>

" Quickly close the current window
"nnoremap <leader>q :q<CR>
" Quickly save the current file
"nnoremap <leader>w :w<CR>

" select all
map <Leader>sa ggVG"

" remap U to <C-r> for easier redo
nnoremap U <C-r>

" Swap implementations of ` and ' jump to markers
" By default, ' jumps to the marked line, ` jumps to the marked line and
" column, so swap them
"nnoremap ' `
"nnoremap ` '

" switch # *
" nnoremap # *
" nnoremap * #

"Keep search pattern at the center of the screen."
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

" remove highlight
noremap <silent><leader>/ :nohls<CR>

"Reselect visual block after indent/outdent.调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv

" y$ -> Y Make Y behave like other capitals
map Y y$

"Map ; to : and save a million keystrokes
" ex mode commands made easy 用于快速进入命令行
nnoremap ; :

" save
"cmap w!! w !sudo tee >/dev/null %

" command mode, ctrl-a to head， ctrl-e to tail
"cnoremap <C-j> <t_kd>
"cnoremap <C-k> <t_ku>
"cnoremap <C-a> <Home>
"cnoremap <C-e> <End>

" 行首和行尾
noremap H ^
noremap L $

