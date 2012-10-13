set nocompatible
filetype off
syntax on

set gfn=Monaco\ 10
"set background=light
"colorscheme desert

set bsdir=buffer
set enc=utf-8
set fenc=utf-8
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set number
set hlsearch

map <F8> :NERDTree<CR>
let NERDTreeWinPos='right'

set incsearch
set nohlsearch

set cf " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set history=256 " Number of things to remember in history.
set ruler
set nowrap
set timeoutlen=500 " Time to wait after ESC (default causes an annoying delay

" Formatting (some of these are for coding in C and C++
set nocp
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,swith,case
set formatoptions=tcqr

" => Text, tab and indent related
set columns=100
set ai
set si
set shiftwidth=2
set tabstop=8
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

" vimim
:let g:vimim_cloud = 'google'

" remove tailing space
autocmd BufWritePre * :%s/\s\+$//e

" Enable Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Vim Bundles
Bundle 'skalnik/vim-vroom'

filetype plugin indent on
