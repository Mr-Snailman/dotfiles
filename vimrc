set nocompatible
filetype off

" Set up Vundle for vim plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Install plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'rodjek/vim-puppet'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

call vundle#end()
filetype indent plugin on

" JSX
"let g:jsx_ext_required = 1

" Set up correct tab size
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

