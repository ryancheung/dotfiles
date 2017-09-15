set nocompatible
filetype off

if has('nvim')
    let s:editor_root=expand("~/.config/nvim")
else
    let s:editor_root=expand("~/.vim")
endif

" Enable Vundle
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin(s:editor_root . '/bundle')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Vim Plugins
Plugin 'dbext.vim'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/mileszs/ack.vim.git'
Plugin 'nerdtree-ack'
Plugin 'git://github.com/tpope/vim-surround.git'
Plugin 'git://github.com/mattn/emmet-vim.git'
Plugin 'git://github.com/scrooloose/nerdcommenter.git'
Plugin 'git://github.com/tpope/vim-rails.git'
Plugin 'git://github.com/plasticboy/vim-markdown.git'
Plugin 'git://github.com/cakebaker/scss-syntax.vim.git'
Plugin 'git://github.com/othree/html5.vim.git'
Plugin 'git://github.com/msanders/snipmate.vim.git'
Plugin 'git://github.com/godlygeek/tabular.git'
Plugin 'git://github.com/kchmck/vim-coffee-script.git'
Plugin 'git://github.com/othree/coffee-check.vim.git'
Plugin 'git://github.com/mattn/gist-vim.git'
Plugin 'git://github.com/mattn/webapi-vim.git'
Plugin 'git://github.com/wincent/command-t.git'
Plugin 'tpope/vim-fugitive'
Plugin 'slim-template/vim-slim'
Plugin 'tfnico/vim-gradle'
Plugin 'vim-scripts/vim-misc'
Plugin 'vim-scripts/lua.vim'
Plugin 'groenewege/vim-less'
Plugin 'vim-scripts/visSum.vim'
Plugin 'google/vim-ft-bzl'
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()
filetype plugin indent on
syntax on

"set guifont=Monaco\ 11
colorscheme peachpuff

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

set clipboard=unnamed

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

autocmd FileType go,cpp,lua,eruby set shiftwidth=4
autocmd FileType go,cpp,lua,eruby set softtabstop=4

autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set softtabstop=2

let g:S = 0  "result in global variable S
function! Sum(number)
  let g:S = g:S + a:number
  return a:number
endfunction

set tags+=~/.config/nvim/tags

set shell=/usr/local/bin/bash\ -O\ globstar

let g:cpp_class_decl_highlight = 0
let g:cpp_member_variable_highlight = 1
let g:cpp_class_scope_highlight = 1

" Keypress to show abosolute path of file
map <leader>f :echo expand('%:p')<CR>
