let mapleader ="ş" 
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
set tw=0
set noswapfile
set softtabstop=2
set shiftwidth=2
set tabstop=2
set autoindent
"set smartindent
set expandtab
filetype plugin indent on
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
set background=dark
set showtabline=0
set textwidth=999

cmap w!! %!sudo tee > /dev/null

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

inoremap ' ''<ESC>ha
inoremap " ""<ESC>ha
inoremap ` ``<ESC>ha
inoremap ( ()<ESC>ha
inoremap [ []<ESC>ha
inoremap { {}<ESC>ha
inoremap <leader>/* /** */<ESC>2ha
inoremap <leader>' '
inoremap <leader>" "
inoremap <leader>( (
inoremap <leader>[ [
inoremap <leader>{ {

nnoremap <Leader>e :Vex<CR>
nnoremap <Leader>E :Ex<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-u> :UndotreeToggle<CR>
nnoremap <C-f> :Ag<CR>
nnoremap <leader>q :q<CR>
nnoremap <Leader>Q :q!<CR>
nnoremap <leader>n :set nu!<CR>
nnoremap <leader>x :bd<CR>

"Coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)


" Coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
 if (index(['vim','help'], &filetype) >= 0)
   execute 'h '.expand('<cword>')
 elseif (coc#rpc#ready())
   call CocActionAsync('doHover')
 else
   execute '!' . &keywordprg . " " . expand('<cword>')
 endif
endfunction

"coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-flutter',
  \ 'coc-emmet',
  \ 'coc-html',
  \ 'coc-css',
  \ ]

"Flutter
inoremap <leader>stf class  extends StatefulWidget{<CR>const ({ Key? key }) : super(key: key);<CR><CR>@override<CR>_State createState() => _State();<CR><backspace>}<CR><CR>class _State extends State<>{<CR>@override<CR>Widget build(BuildContext context){<CR><CR>}<CR><backspace>}<ESC>12k6li

"HTML
inoremap <leader>html <!DOCTYPE html><CR><html lang="en"><CR><head><CR><meta charset="UTF-8"><CR><meta http-equiv="X-UA-Compatible" content="IE=edge"><CR><meta name="viewport" content="width=device-width,initial-scale=1.0"><CR><title></title><CR><backspace></head><CR><body><CR><CR></body><CR><backspace></html><ESC>5k5li
inoremap <leader>div <div class=""></div><ESC>7hi
inoremap <leader>img <img src="" alt=""/><ESC>9hi
inoremap <leader><a <a href="#" class=""></a><ESC>5hi
inoremap <leader>sec <section id=""></section><ESC>11hi
inoremap <leader>h1 <h1 class=""></h1><ESC>6hi
inoremap <leader>h2 <h2 class=""></h2><ESC>6hi
inoremap <leader>h3 <h3 class=""></h3><ESC>6hi
inoremap <leader>h4 <h4 class=""></h4><ESC>6hi
inoremap <leader><p <p class=""></p><ESC>5hi
inoremap <! <!--  --><ESC>3hi
inoremap <leader>nav <nav class=""></nav><ESC>7hi
inoremap <leader>main <main class=""></main><ESC>8hi
inoremap <leader>foot <footer class=""></footer><ESC>10hi
inoremap <leader>pic <picture></picture><ESC>9hi
inoremap <leader>inp <input type="text" class="" placeholder=""/><ESC>17hi
inoremap <leader>but <button class=""></button><ESC>10hi
inoremap <leader>spa <span class=""></span><ESC>8hi
inoremap <leader>linkcss <link rel="stylesheet" href="" /><ESC>3hi
inoremap <leader>linkjs <script src=""></script><ESC>10hi

"JS
inoremap <leader>if if(){<CR>}<ESC>k2la
inoremap <leader>el else{<CR>}<ESC>k4la
inoremap <leader>elif else if(){<CR>}<ESC>k7la
inoremap <leader>locset localStorage.setItem("", "")<ESC>6ha
inoremap <leader>locget localStorage.getItem("")<ESC>hi

"Java
inoremap <leader>psvm public static void main(String[] args){<CR><CR>}<ESC>ka<space><space><space><space>
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

"-----------------------------------------------PHASER---------------------------------------------------------
inoremap <leader>scene class scene extends Phaser.Scene{<CR>constructor(){<CR>super("")<CR>}<CR>preload(){<CR>}<CR>create(){<CR>}<CR>update(){<CR>}<CR>}<ESC>8k10la
inoremap <leader>loadaud this.load.audio("", "")<ESC>6ha
inoremap <leader>loadimg this.load.image("", "")<ESC>6ha
inoremap <leader>loadatl this.load.atlas("", "", "")<ESC>10ha
inoremap <leader>anims this.anims.create({<CR>key: "",<CR>frameRate: ,<CR>frames: [],<CR>repeat: <CR>})<ESC>4k6la
inoremap <leader>spr this.add.sprite()<ESC>ha
inoremap <leader>pspr this.physics.add.sprite()<ESC>ha
inoremap <leader>tspr this.add.tileSprite()<ESC>ha
inoremap <leader>txt this.add.text()<ESC>ha
inoremap <leader>sound this.sound.play("")<ESC>2ha
inoremap <leader>nosound this.sound.stopAll()
inoremap <leader>timee this.time.addEvent({<CR>delay: ,<CR>callback:() =>{<CR>}<CR>})<ESC>3k7la
inoremap <leader>pdown .on("pointerdown", () => {<CR><CR>})<ESC>ka
inoremap <leader>pover .on("pointerover", () => {<CR><CR>})<ESC>ka
inoremap <leader>pout .on("pointerout", () => {<CR><CR>})<ESC>ka
inoremap <leader>tilemap this.make.tilemap({<CR>key: "",<CR>tileWidth: ,<CR>tileHeight: <CR>})<ESC>3k6la
inoremap <leader>colbyex .setCollisionByExclusion([-1])
inoremap <leader>coll this.physics.add.collider()<ESC>ha
inoremap <leader>overl this.physics.add.overlap()<ESC>ha
inoremap <leader>velox .setVelocityX()<ESC>ha
inoremap <leader>veloy .setVelocityY()<ESC>ha
inoremap <leader>v0 .setVelocity(0)
"--------------------------------------------------------------------------------------------------------------

let g:lsc_auto_map = v:true
set nocompatible
call plug#begin()
  Plug 'sheerun/vim-polyglot'
  Plug 'preservim/nerdtree'
  Plug 'mbbill/undotree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'vwxyutarooo/nerdtree-devicons-syntax'
  Plug 'ryanoasis/vim-devicons'
  Plug 'haya14busa/incsearch.vim'
  Plug 'humiaozuzu/tabbar'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'manzeloth/live-server'
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'thosakwe/vim-flutter'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
call plug#end()
  "Plug 'natebosch/vim-lsc'
  "Plug 'natebosch/vim-lsc-dart'
