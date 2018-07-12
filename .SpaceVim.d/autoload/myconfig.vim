func! myconfig#before() abort
    " code goes here

    " let colorcolumn = 79
    set expandtab
    set smarttab
    autocmd FileType ruby,yaml,dart set shiftwidth=2
    autocmd FileType ruby,yaml,dart set softtabstop=2
    autocmd FileType css,javascript,eruby,html set shiftwidth=4
    autocmd FileType css,javascript,eruby,html set softtabstop=4
    autocmd BufEnter * set mouse=
    set clipboard=unnamedplus
    set shell=/usr/local/bin/bash

    let g:clamp_libclang_file = '/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'

    let g:deoplete#enable_at_startup = 1

    let g:spacevim_custom_plugins = [['ryancheung/ryansgruvbox']]
endf
