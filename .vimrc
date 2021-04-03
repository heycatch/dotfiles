"settings
syntax on
set shiftwidth=2
set tabstop=2
set number
set expandtab
set background=dark
set t_Co=256
set hlsearch
set incsearch
set encoding=utf-8
set ffs=unix,dos,mac
set nobackup
set nowb
set noswapfile

"hotkeys
map <silent> <C-t> :NERDTree<CR>
let NERDTreeShowHidden=1

"code::stats
let g:codestats_api_key='COPY_API_KEY'

"VundleBundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'https://gitlab.com/code-stats/code-stats-vim.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

