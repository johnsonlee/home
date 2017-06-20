"
" Author: Johnson Lee <g.johnsonlee@gmail.com>
" Date:   Fri Jul  3 21:03:36 CST 2015
"

" airline
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1

" vertical line indentation
let g:indentLine_color_term = 234
let g:indentLine_color_gui = '#252525'
let g:indentLine_char = '│'

" nerdtree window size
let g:NERDTreeWinSize = 50

execute pathogen#infect()

set autoindent
set colorcolumn=80
set encoding=utf-8
set expandtab
set fileencoding=utf-8
set hlsearch
set laststatus=2
set list
set listchars=tab:▸\ ,trail:▫
set number
set ruler
set shiftwidth=4
set tabstop=4
set term=screen-256color
set undofile
set undodir=~/.vim/undodir

syntax enable
syntax on

nnoremap <silent> <Tab> :bn<CR>
nnoremap <silent> <S-Tab> :bp<CR>
