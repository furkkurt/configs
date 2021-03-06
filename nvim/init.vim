filetype plugin on
set omnifunc=syntaxcomplete#Complete
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set exrc
set guicursor=
set nohlsearch
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set colorcolumn=240
set signcolumn=no
set fileencoding=utf-8
set encoding=utf-8
set termencoding=utf-8

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'scrooloose/nerdTree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
colorscheme gruvbox
highlight Normal guibg=none

let mapleader = " "
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-l> :vertical resize +5<CR>
nnoremap <C-h> :vertical resize -5<CR>
nnoremap <C-j> :resize -5<CR>
nnoremap <C-k> :resize +5<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
