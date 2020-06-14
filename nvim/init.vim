let mapleader = ","

call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'rhysd/clever-f.vim'
Plug 'wellle/targets.vim'
Plug 'kamykn/spelunker.vim'
Plug 'preservim/nerdcommenter'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/goyo.vim'
Plug 'metakirby5/codi.vim'
Plug 'dylanaraps/wal.vim'
call plug#end()

let g:NERDSpaceDelims = 1
let g:NerdTrimTrailingWhiteSpace = 1

let g:enable_spelunker_vim=0
let g:spelunker_check_type=2

let g:AutoPairsShortcutToggle='<leader>ap'

map <silent><C-g> :Goyo<CR>

function! s:goyo_enter()
  set scrolloff=999
  set nocursorline
endfunction

function! s:goyo_leave()
  set cursorline
  set scrolloff=5
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

map <leader>f :Lex<cr>
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

map <C-_> <plug>NERDCommenterToggle

set number relativenumber
set mouse=a
set clipboard+=unnamedplus
set tabstop=8
set expandtab
set shiftwidth=4
set laststatus=0
set so=5
set incsearch
set nohlsearch
set wildmode=longest,list,full
set termguicolors
set fo=tqn
set tw=80
set cursorline
set splitbelow
set splitright
set startofline

map <leader>m :w! \| !compiler <c-r>%<CR>
map <leader>p :!opout <c-r>%<CR><CR>
map <c-s> :w<CR>

autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritepre * %s/\n\+\%$//e

" delete latex files on leaving
autocmd VimLeave *.tex !texclear %


autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

autocmd BufRead,BufNewfile *.rmd setlocal conceallevel=2
autocmd BufRead,BufNewfile *.rmd setlocal indentexpr=GetMdIndent()
autocmd BufNewFile *.rmd 0r ~/.config/nvim/templates/template.rmd

autocmd BufNewFile *.c 0r ~/.config/nvim/templates/template.c
autocmd BufNewFile *.cpp 0r ~/.config/nvim/templates/template.cpp
autocmd BufNewFile *.tex 0r ~/.config/nvim/templates/template.tex
autocmd ColorScheme * highlight pythonSpaceError guibg=#0

colorscheme default
set bg=light
hi CursorLineNr guibg=grey90
hi NonText guifg=white
