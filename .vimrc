
".VIMRC written by and for James Mare
"Dont put stuff here you dont understand

"-----------------------COLORS-----------------------
set background=dark
colorscheme base16-solarized
syntax enable
highlight NonText ctermbg=none
hi Normal ctermbg=none
"---------------------UI Stuff---------------------
set number "show line numbers
set showcmd "show last command
set cursorline "highlight current line
set wildmenu "autocomplete commands
set showmatch "match brackets automatically

"-------------------LEADER----------------------
let mapleader=" " "leader is space

inoremap jk <esc> 
noremap <leader>s :w<CR> 


"-------------------POWERLINE-----------------
let $PYTHONPATH="/usr/lib/python3.5/site-packages"
set laststatus=2

