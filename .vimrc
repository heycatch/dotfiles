"other
set number
set shiftwidth=4
set tabstop=4
set smarttab
syntax on

set spell spelllang=en

set background=dark
set t_Co=256

set hlsearch
set incsearch

set encoding=utf-8

set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

"code::stats
let g:codestats_api_key = 'KEY'

"mappings
map <C-n> :NERDTreeToggle<CR>

"VundleBundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'airblade/vim-gitgutter'
Plugin 'vbe0201/vimdiscord'
Plugin 'https://gitlab.com/code-stats/code-stats-vim.git'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic.git'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'w0rp/ale'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree.git'
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

