".VIMRC written by and for James Mare
"Dont put stuff here you dont understand

set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on


"----------------------VUNDLE---------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'tpope/vim-fugitive'
Bundle 'justinmk/vim-sneak'
Bundle 'scrooloose/nerdtree'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'tpope/vim-obsession'
Bundle 'chriskempson/base16-vim'
Bundle 'vim-airline/vim-airline'
Bundle 'edkolev/tmuxline.vim'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-surround'


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


"-------------------LEADER----------------------
let mapleader=" " "leader is space

inoremap jk <esc>
noremap <leader>s :w<CR>
noremap <leader>p :CtrlP<CR>
nnoremap <leader>. :CtrlPTag<cr>

"-------------------COLORS-----------------------
set t_Co=256
set background=dark "this just tells vim what color the terminal is
let base16colorspace=256
colorscheme base16-ocean
syntax enable
set encoding=utf8

"---------------------UI Stuff---------------------
set relativenumber "show line numbers
set number
set autoindent "indent on enter
set showcmd "show last command
set cursorline "highlight current line
set wildmenu "autocomplete commands
set showmatch "match brackets autoatically

set expandtab
set shiftwidth=4
set softtabstop=4

"-------------------AIRLINE-----------------
set laststatus=2
let g:airline_powerline_fonts = 1
"let g:airline_theme = "base16"
let g:tmuxline_powerline_separators = 1
