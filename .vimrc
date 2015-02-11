execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on
autocmd BufWritePost *.py call Flake8()
autocmd BufWritePre * :%s/\s\+$//e
set modeline
set expandtab
set shiftwidth=4
set softtabstop=4
set background=dark
set smartindent
set autoindent
let g:instant_rst_bind_scroll=0
let g:riv_disable_folding = 1
let g:flake8_show_quickfix=0
let g:flake8_show_in_file=1
set foldmethod=indent
set foldlevel=99
imap <C-Return> <CR><CR><C-o>k<Tab>
