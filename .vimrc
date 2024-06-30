let mapleader = " "

set relativenumber
set number

" syntax highlight
syntax enable

" indent
set smartindent
set autoindent

set tabstop=4
set shiftwidth=4
set expandtab

" search highlight
set hlsearch

set ignorecase

set smartcase

" bracket match
set showmatch

set encoding=utf-8

set clipboard=unnamedplus

" save file
nnoremap <leader>w :w<CR>

" quit file
nnoremap <leader>q :q<CR>

" save and quit file
nnoremap <leader>x :x<CR>

nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" move cursor
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" copy to system clipboard
vnoremap <leader>y "+y

" cut to system clipboard
vnoremap <leader>d "+d

" paste from system clipboard
nnoremap <leader>p "+p
vnoremap <leader>p "+p

" annotation
nnoremap <leader>c :action CommentByLineComment<CR>

" search files
nnoremap <leader>f :action SearchEverywhere<CR>

" open project view
nnoremap <leader>pv :action ProjectView<CR>

" open recent files
nnoremap <leader><leader> :action RecentFiles<CR>

" switch between tabs
nnoremap <leader><Tab> :action NextWindow<CR>

set nowrap

" auto read file
set autoread

" highlight time
set updatetime=100

" smooth scroll
set scrolloff=5

" auto save and auto reload
set sessionoptions+=globals,tabpages,winpos,winpos

" edit
xnoremap J :m '>+1<CR>gv=gv
xnoremap K :m '<-2<CR>gv=gv
