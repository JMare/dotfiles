
".VIMRC written by and for James Mare
"Dont put stuff here you dont understand

"-----------------------COLORS-----------------------
set background=dark "this just tells vim what color the terminal is
colorscheme solarized "from aur
syntax enable
highlight NonText ctermbg=none "this is needed for compton
hi Normal ctermbg=none "this is needed for compton

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

inoremap jk <esc>"exit insert mode on home row 
noremap <leader>s :w<CR>"save without typing :w 


"-------------------POWERLINE-----------------
let $PYTHONPATH="/usr/lib/python3.5/site-packages"
set laststatus=2
