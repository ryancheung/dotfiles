func! myconfig#before() abort
    echo "In myconfig#before."
    " code goes here

    " let colorcolumn = 79
    set expandtab
    set smarttab
    autocmd FileType ruby set shiftwidth=2
    autocmd FileType ruby set softtabstop=2
    autocmd FileType css,javascript,eruby,html set shiftwidth=4
    autocmd FileType css,javascript,eruby,html set softtabstop=4
endf
