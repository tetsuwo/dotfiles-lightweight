""
" MY .VIMRC SETTINGS
"
" @author Tetsuwo OISHI
"

" VARIABLES {{{
" ----------------------------------------------------------------
let mapleader = ","
" }}}

" BASIC SETTING {{{
" ----------------------------------------------------------------
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
" }}}

" COLOR SCHEME {{{
" ----------------------------------------------------------------
let g:jellybeans_italic=0
colorscheme jellybeans
" }}}

" COMMAND SETTING {{{
" ----------------------------------------------------------------
" hide highlight by search
noremap <esc><esc> :nohlsearch<CR><esc>
" clipboard
vnoremap <silent> <C-p> "0p<CR>
" }}}

" TAGS SETTING {{{
" ----------------------------------------------------------------
filetype on
set tags=./tags,./../tags,./*/tags,./../../tags,./../../../tags,./../../../../tags,./../../../../../tags
" }}}

" FUNCTION SETTING {{{
" ----------------------------------------------------------------
function! PHPLint()
    let result = system( &ft . ' -l ' . bufname(""))
    echo result
endfunction

function! RubyLint()
    let result = system( &ft . ' -l ' . bufname(""))
    echo result
endfunction
" }}}

" EACH FILE SETTING {{{
" ----------------------------------------------------------------
autocmd BufWritePost *.php call PHPLint()
autocmd BufNewFile,BufRead *.twig set filetype=php
" }}}

" vim:foldmethod=marker:foldlevel=0
