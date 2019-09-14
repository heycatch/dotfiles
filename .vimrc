"other
set number
set shiftwidth=4
set tabstop=4
set smarttab
syntax on

colorscheme gotham256
let g:lightline = { 'colorscheme': 'gotham256'  }
let g:gotham_airline_emphasised_insert = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set hlsearch
set incsearch

"mappings
map <C-n> :NERDTreeToggle<CR>

"VundleBundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic.git'
Plugin 'ap/vim-css-color'
Plugin 'whatyouhide/vim-gotham'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree.git'
Plugin 'VundleVim/Vundle.vim'

call vundle#end()
filetype plugin indent on

