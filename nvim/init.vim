let mapleader = " "

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
" NETRW
"================================================

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25


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
set splitbelow
set splitright
set startofline
set autowrite
let &fcs='eob: '

vnoremap <leader>p "_dP
nnoremap <leader>d "_d
vnoremap <leader>d "_d
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nmap Y y$

map <silent><C-w>n :bnext<CR>
map <silent><C-w>p :bprevious<CR>
map <silent><C-w>d :bdelete<CR>

map <leader>c :w! \| !compiler <c-r>%<CR><CR>
map <c-s> :w<CR>

filetype plugin on

autocmd FileType * setlocal fo-=c fo-=r fo-=o fo-=l

au BufNewFile *.c 0r ~/.config/nvim/templates/template.c
au BufNewFile *.cpp,*.cc 0r ~/.config/nvim/templates/template.cpp
au BufNewFile *.ino 0r ~/.config/nvim/templates/template.ino
au BufNewFile *.rs 0r ~/.config/nvim/templates/template.rs
au BufNewFile *.go 0r ~/.config/nvim/templates/template.go
au BufNewFile *.hs 0r ~/.config/nvim/templates/template.hs
au BufNewFile *.java 0r ~/.config/nvim/templates/template.java | s/FILENAME/\=expand("%:t:r")/g
au BufNewFile *.html 0r ~/.config/nvim/templates/template.html

autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2

au BufNewFile *.sh 0r ~/.config/nvim/templates/template.sh | ! chmod +x %
au BufNewFile *.py 0r ~/.config/nvim/templates/template.py | ! chmod +x %
