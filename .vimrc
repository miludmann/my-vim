" Pathogen
call pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype off " Pathogen needs to run before plugin indent on
syntax on
filetype plugin on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set backspace=indent,eol,start
map  <C-m> :tabn<CR>
map  <C-1> :tabp<CR>
map  <C-n> :tabnew<CR>
