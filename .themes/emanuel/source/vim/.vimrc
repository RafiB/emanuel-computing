syntax enable
set smartindent
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set softtabstop=4
set expandtab
set clipboard+=unnamed
set clipboard+=unnamedplus
set go+=a
set number

set term=xterm-256color

" Remap ctrl+arrows to move between window splits
nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
