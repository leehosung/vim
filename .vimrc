"pathogen
execute pathogen#infect()

syntax on
filetype on
filetype plugin indent on
autocmd BufWritePre * :%s/\s\+$//e
set modeline
set expandtab
set shiftwidth=4
set softtabstop=4
set background=dark
set smartindent
set autoindent
set foldmethod=indent
set foldlevel=99

"rst
let g:instant_rst_bind_scroll=0
let g:riv_disable_folding = 1

"flake8
autocmd BufWritePost *.py call Flake8()
let g:flake8_show_quickfix=0
let g:flake8_show_in_file=1

"nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"jsx
let g:jsx_ext_required = 0
