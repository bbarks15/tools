let mapleader = ","

if ! filereadable(system('echo -n "$HOME/.config/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p $HOME/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > $HOME/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

call plug#begin("$HOME/.config/nvim/plugged")
Plug 'tmsvg/pear-tree'
Plug 'rhysd/clever-f.vim'
Plug 'wellle/targets.vim'
Plug 'preservim/nerdcommenter'
call plug#end()

"================================================
" Nerd Commenter
"================================================

let g:NERDSpaceDelims = 1
let g:NerdTrimTrailingWhiteSpace = 1
let g:NERDCommentEmptyLines = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '//','right': '' } }
map <C-_> <plug>NERDCommenterToggle

"================================================
" Spell
"================================================

map <silent> Zt :setlocal spell! spelllang=en_au<CR>
autocmd BufRead,BufNewFile *.rmd,*.md,*.tex,*.txt setlocal spell spelllang=en_au

"================================================
" General Settings
"================================================

set number relativenumber
set mouse=a
set clipboard+=unnamedplus
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab
set laststatus=1
set so=5
set incsearch
set nohlsearch
set wildmode=longest,list,full
set fo=tqn
set tw=80
set nowrap
" set cursorline
set splitbelow
set splitright
set startofline
set autowrite
let &fcs='eob: '

map <silent><C-w>n :bnext<CR>
map <silent><C-w>p :bprevious<CR>
map <silent><C-w>d :bdelete<CR>

map <leader>c :w! \| !compiler <c-r>%<CR><CR>
map <c-s> :w<CR>

" autocmd FileType * setlocal fo-=c fo-=r fo-=o fo-=l

autocmd BufNewFile *.c 0r ~/.config/nvim/templates/template.c
autocmd BufNewFile *.cpp,*.cc 0r ~/.config/nvim/templates/template.cpp
autocmd BufNewFile *.java 0r ~/.config/nvim/templates/template.java
            \ | s/CLASS/\=expand("%:t:r")/g
autocmd BufNewFile *.html 0r ~/.config/nvim/templates/template.html
autocmd BufNewFile *.sh 0r ~/.config/nvim/templates/template.sh
