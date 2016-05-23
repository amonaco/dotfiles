" basics
" colorscheme darkblue
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

" for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" http://stackoverflow.com/questions/30501271/changing-color-of-vim-syntastic-error-window 
hi Search ctermfg=white ctermbg=blue
