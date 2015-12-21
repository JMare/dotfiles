
".VIMRC written by and for James Mare
"Dont put stuff here you dont understand

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Bundle 'justinmk/vim-sneak'
Bundle 'scrooloose/nerdtree'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'tpope/vim-obsession'
Bundle 'chriskempson/base16-vim'
Bundle 'valloric/youcompleteme'
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

"-----------------------COLORS-----------------------
set background=dark "this just tells vim what color the terminal is
colorscheme base16-ocean"from aur
let base16colorspace=256
syntax enable

"---------------------UI Stuff---------------------
set relativenumber "show line numbers
set number
set autoindent "indent on enter 
set showcmd "show last command
set cursorline "highlight current line
set wildmenu "autocomplete commands
set showmatch "match brackets autoatically
"-------------------LEADER----------------------
let mapleader=" " "leader is space

inoremap jk <esc>
noremap <leader>s :w<CR>
noremap <leader>p :CtrlP<CR>
:command Sd SyntasticToggleMode
"-------------------POWERLINE-----------------
let $PYTHONPATH="/usr/lib/python3.5/site-packages"
set laststatus=2


"-------------------SYNTASTIC CONFIG-----------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
