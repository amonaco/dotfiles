" basics
" :colorscheme darkblue
set number
set shiftwidth=4
set tabstop=4
set expandtab
syntax on

" remember last position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" only ruby
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

" pathogen
execute pathogen#infect()

" airline
set laststatus=2
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1
