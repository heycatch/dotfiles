"other
set number
set shiftwidth=4
set tabstop=4
set smarttab
syntax on

colorscheme gruvbox
set background=dark

set hlsearch
set incsearch

"mappings
map <C-n> :NERDTreeToggle<CR>

"VundleBundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'terryma/vim-multiple-cursors'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'https://github.com/jiangmiao/auto-pairs'
Plugin 'https://github.com/morhetz/gruvbox'
Plugin 'https://github.com/scrooloose/nerdtree.git'
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on
