syntax on
set autoindent
set backspace=indent,eol,start
set cursorline
set colorcolumn=+1
set expandtab
set hlsearch
set nofoldenable
set foldmethod=indent
set laststatus=2
set modelines=5
set nojoinspaces
set ruler
set shiftwidth=2
set softtabstop=2
set tabstop=2
set textwidth=80
set wildmode=longest,list
set wildignore+=*.pyc,*__pycache__/

nnoremap <SPACE> <Nop>
let mapleader=" "

" Disable concealing of double quotes that comes with Ubuntu's built-in JSON
" syntax file, which conflicts with indentLine's use of the conceal feature.
let g:vim_json_syntax_conceal = 0

" Configure the vim-scala to properly indent Scaladoc comments with the star
" aligned to the right.
" https://github.com/derekwyatt/vim-scala#scaladoc-comment-indentation
let g:scala_scaladoc_indent = 1

filetype plugin indent on

setlocal makeprg=flake8\ %
set makeprg=flake8\ %

call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-obsession'

call plug#end()

" TODO: Add these to vimdiff
" highlight DiffAdd ctermbg=157
" highlight DiffDelete ctermbg=181
" highlight DiffChange ctermbg=193
" highlight DiffText ctermbg=185
