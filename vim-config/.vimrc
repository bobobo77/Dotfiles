set nocompatible              " be iMproved, required
filetype off                  " required
"
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'cseelus/vim-colors-lucid'
"used ChatGPT to figure out how to link to the desired color scheme

Plugin 'tpope/vim-fugitive'
"seemed like a good git plugin for Vundle

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

:colorscheme lucid
"used https://github.com/nanotech/jellybeans.vim as a basis to figure out vim colors

~
~
~
~
~
".vimrc" 36L, 1152B          