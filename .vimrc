
let mapleader = ","
set runtimepath+=~/.vim/
syntax on

set number           " indicate line number
set tabstop=4        " tabサイズ
set expandtab        " タブをスペースに展開しない (expandtab:展開する)
set shiftwidth=4
set autoindent       " インデントを現在行と同一化
set cindent          " C言語型インデント
set smartindent      " 新しい行は自動インデント
"set noswapfile       " swapを作らない
set nobackup         " backupを作らない
set listchars=eol:$,tab:>\ ,extends:< 
set whichwrap=b,s,h,l,<,>,[,]  " 行頭行末でカーソルを止めない

let g:jellybeans_italic=0
colorscheme jellybeans

autocmd BufNewFile,BufRead *.twig set filetype=php


