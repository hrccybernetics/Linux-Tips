" set line number
set number
set relativenumber

" Status bar
set laststatus=2

" Set compatibility to Vim only
set nocompatible          " uncomment this!

" Set line wrap without extending
set wrap

" Syntax highlight
syntax on

" colorscheme
colorscheme desert

" Terminal split below
set splitbelow

" Set terminal size
set termwinsize=15x0

" Set Lex 20
let g:netrw_winsize = 20
let g:netrw_banner = 0    " hide netrw banner
let g:netrw_liststyle = 3 " tree view

" Quality of life additions
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set scrolloff=8           " keep 8 lines above/below cursor
set incsearch             " search as you type
set hlsearch              " highlight search results
set wildmenu              " better command autocomplete
filetype plugin indent on " required for most plugins

" Keymaps
call plug#begin()
" Plug 'preservim/nerdtree'           " file explorer
Plug 'vim-airline/vim-airline'      " status bar
Plug 'tpope/vim-fugitive'           " git
Plug 'dense-analysis/ale'           " linting/LSP
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }   " ← ADD THIS
Plug 'junegunn/fzf.vim'             " fuzzy finder
call plug#end()

nnoremap <C-n> :Lex<CR>   " toggle file explorer
nnoremap <C-t> :terminal<CR>
