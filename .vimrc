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
set pastetoggle=<F4>
let mapleader = ","
nnoremap <Tab> <C-w>w
inoremap jk <ESC>
" Use dot "." to repeat previous command automatically
vnoremap . :norm.<CR>
" Easy buffer switching with F5 key
:nnoremap <F6> :buffers<CR>:buffer<Space>
" Display a status line
set laststatus=2
"set statusline=%2*[%02n]%*\ %f\ %3*%(%m%)%4*%(%r%)%*%=%b\ %{fugitive#statusline()}\ 0x%B\ \ <%l,%c%V>\ %P

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

"linting
"{
let @x = ":%!xmllint --format %\n"
let @s = ":%!jsonlint %\n"
let @j = ":%!jshint --show-non-errors %\n"
:map @jj :%!js-beautify %"
"}

"spell checking
"{
set spell spelllang=en_us
" Fix spelling with <leader>f
nnoremap <leader>f 1z=
" Toggle spelling visuals with <leader>s
nnoremap <leader>s :set spell!
"}

"Map w!! for sudo writing
cmap w!! w !sudo tee >/dev/null %

"YCM
"{
let g:ycm_extra_conf_globlist = ['~/.vim/bundle/YouCompleteMe/cpp/ycm/*','!~/*']
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"}

" Syntastic
"{
let g:syntastic_c_checkers=['make']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*gbar
"}

" Search related stuff
"{
" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
"}

" Handling temporary swap files at a global level
"{
silent execute '!mkdir -p "'.$HOME.'/.vim/swapfiles"'
set backupdir=$HOME/.vim/swapfiles//
set directory=$HOME/.vim/swapfiles//
"}
"
"Properly handle xml indentation
"{
set nocompatible
filetype plugin indent on
"}
