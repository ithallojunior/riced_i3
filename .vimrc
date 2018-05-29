set number
set relativenumber
syntax on
"colorscheme desert
set backspace=indent,eol,start
set mouse=a
"Python https://realpython.com/blog/python/vim-and-python-a-match-made-in-heaven/
"Julia syntax 
autocmd BufRead,BufNewFile *.jl :set filetype=julia

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab "tab as spaces
set autoindent
set fileformat=unix

" sets spellchecker
set spell spelllang=pt,en
nnoremap <silent> <C-i> :set spell!<CR><C-i>

" background
":highlight Normal ctermfg=gray ctermbg=black

"completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

execute pathogen#infect()
call pathogen#helptags()
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle  <CR>
set t_Co=256

"python autocomplete
set dictionary+=~/.vim/pydict

colorscheme desert
set showtabline=2
set laststatus=2
set hlsearch
" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <silent> <C-k> :/    <CR><C-k>
"autocmd TextChanged,TextChangedI <buffer> silent write
let g:airline#extensions#tabline#enabled = 1
