set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim

let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/Library/Frameworks/Python.framework/Versions/3.10/bin/python3'

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'dense-analysis/ale'
Plugin 'rust-lang/rust.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Konfekt/FastFold'
Plugin 'tmhedberg/SimpylFold'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'sainnhe/gruvbox-material'
Plugin 'Shougo/deoplete.nvim'
Plugin 'davidhalter/jedi-vim'
Plugin 'deoplete-plugins/deoplete-jedi'
Plugin 'fatih/vim-go'
Plugin 'petobens/poet-v'
Plugin 'ervandew/supertab'

call vundle#end()

let g:ale_linters = {'rust': ['analyzer'],}
let g:ale_fixers = {'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines']}
let g:SimplyFold_docstring_preview = 1
let g:jedi#completions_enabled = 0
let g:poetv_auto_activate = 1
let g:deoplete#enable_at_startup = 1
let g:kite_supported_languages = ['*']
let g:kite_tab_complete=1

set completeopt+=menuone
set completeopt+=noinsert

filetype plugin indent on
syntax on

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

autocmd VimEnter * NERDTree | wincmd p
autocmd BufNewFile,BufRead *.rs set filetype=rust

set completeopt=menu,menuone,preview
let g:ale_completion_enabled = 1

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set laststatus=2

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

colorscheme gruvbox-material
set scrolloff=10
set incsearch
set number

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

