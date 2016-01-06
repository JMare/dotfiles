
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
Bundle 'scrooloose/syntastic'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'tpope/vim-obsession'
Bundle 'chriskempson/base16-vim'
Bundle 'valloric/youcompleteme'
Bundle 'klen/python-mode'
Bundle 'bling/vim-airline'
Bundle 'edkolev/tmuxline.vim'
Bundle 'edkolev/promptline.vim'
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
:command Sd SyntasticToggleMode

"--jump-----------------COLORS-----------------------
set background=dark "this just tells vim what color the terminal is
colorscheme base16-ocean"from aur
let base16colorspace=256
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
let g:tmuxline_powerline_separators = 1
"-------------------SYNTASTIC CONFIG-----------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"---------------------PYTHON-MODE---------------------
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
