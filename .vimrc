let mapleader =" "
set encoding=utf8
colorscheme atom-dark-256 "colorscheme
set nu! "line numbers
set guifont=Consolas:h12:cRUSSIAN "gvim font
set t_Co=256 "256 colors
let g:netrw_winsize=25 "default new window size
let g:netrw_preview=1
syntax on
set history=100
set nowrap
set noswapfile
set softtabstop=2
set autoindent
filetype plugin indent on

inoremap ' ''<ESC>ha
inoremap " ""<ESC>ha
inoremap ` ``<ESC>ha
inoremap ( ()<ESC>ha
inoremap [ []<ESC>ha
inoremap { {}<ESC>ha
inoremap /* /** */<ESC>2ha
