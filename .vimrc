" Pathogen
call pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype off " Pathogen needs to run before plugin indent on
syntax enable
set encoding=utf-8
filetype plugin on
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a
set backspace=indent,eol,start
set number
map  <C-m> :tabn<CR>
map  <C-1> :tabp<CR>
map  <C-n> :tabnew<CR>
let mapleader = ","
nnoremap <Tab> <C-w>w
set laststatus=2
"set statusline=%2*[%02n]%*\ %f\ %3*%(%m%)%4*%(%r%)%*%=%b\ %{fugitive#statusline()}\ 0x%B\ \ <%l,%c%V>\ %P
"if !exists('g:airline_symbols')
    "let g:airline_symbols = {}
"endif
"let g:airline_symbols.space = "\ua0"

"colorscheme luna

"Solarized theme
"{
set background=dark
let g:solarized_termcolors=16
colorscheme solarized
"let g:solarized_termtrans=0
"let g:solarized_contrast="normal"
"let g:solarized_visibility="normal"
"}

"vim-airline
"{
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif
"}
