set nocompatible
filetype off

" Enable Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vim Bundles
Bundle 'dbext.vim'
Bundle 'git://github.com/scrooloose/nerdtree.git'
Bundle 'git://github.com/mileszs/ack.vim.git'
Bundle 'nerdtree-ack'
Bundle 'git://github.com/wincent/Command-T.git'
Bundle 'git://github.com/tpope/vim-surround.git'
Bundle 'git://github.com/mattn/emmet-vim.git'
Bundle 'git://github.com/scrooloose/nerdcommenter.git'
Bundle 'git://github.com/tpope/vim-rails.git'
Bundle 'git://github.com/plasticboy/vim-markdown.git'
Bundle 'git://github.com/cakebaker/scss-syntax.vim.git'
Bundle 'git://github.com/othree/html5.vim.git'
Bundle 'git://github.com/msanders/snipmate.vim.git'
Bundle 'git://github.com/godlygeek/tabular.git'
Bundle 'git://github.com/kchmck/vim-coffee-script.git'
Bundle 'git://github.com/othree/coffee-check.vim.git'
Bundle 'git://github.com/mattn/gist-vim.git'
Bundle 'git://github.com/mattn/webapi-vim.git'
Bundle 'tpope/vim-fugitive'
Bundle 'slim-template/vim-slim'
Bundle 'kana/vim-fakeclip'
Bundle 'tfnico/vim-gradle'

call vundle#end()
filetype plugin indent on
syntax on

"set guifont=Monaco\ 11
"colorscheme Github

set bsdir=buffer
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set number
set hlsearch

map <leader>e :NERDTree<CR>
let NERDTreeWinPos='right'

set incsearch
set nohlsearch

set cf " Enable error files & error jumping.
set clipboard=unnamed " Yanks go on clipboard instead.
set history=256 " Number of things to remember in history.
set ruler
set nowrap
set timeoutlen=800 " Time to wait after ESC (default causes an annoying delay

" Formatting (some of these are for coding in C and C++
set nocp
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,swith,case
set formatoptions=tcqr

" => Text, tab and indent related
"set columns=100
set ai
set si
set shiftwidth=2
set tabstop=4
set softtabstop=2
set expandtab
set smarttab
set bs=2 " Backspace over everything in insert mode
set cindent

set nobackup
set nowb
set noswapfile

"autocmd FileType related
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

" Visual
set showmatch "Show matching brackets.
set mat=5 "Bracket blinking.
set novisualbell " No blinking .
set laststatus=2 " Always show status line.
imap <M-o> <Esc>o

" remove tailing space
autocmd BufWritePre * :%s/\s\+$//e

" ack
let g:ackprg="ack -H --nocolor --nogroup --column"

" filetype detects
au BufRead,BufNewFile *.scss set filetype=scss
au BufRead,BufNewFile [Cc]apfile set filetype=ruby
au BufRead,BufNewFile *.cap set filetype=ruby
au BufRead,BufNewFile *.slim set filetype=slim

set tags+=/home/ryan/.vim/tags
