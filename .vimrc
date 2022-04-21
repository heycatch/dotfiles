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
# When i open vim it starts with 'replace mode'.
# Comment out this option on the wsl2.
set t_u7=

map <silent> <C-t> :NERDTree<CR>
let NERDTreeShowHidden=1

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree.git'
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

