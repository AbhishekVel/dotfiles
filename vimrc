
set nocompatible
filetype off

" configure plugins:
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'AbhishekVel/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'prettier/vim-prettier'
Plugin 'preservim/nerdtree'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'glepnir/oceanic-material'
Plugin 'junegunn/fzf' 
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on

" make editing a little nicer:
syntax on
set hidden
set number
set incsearch
set hlsearch
set ruler
set relativenumber

" configure go:
let g:go_fmt_command = "goimports"
let g:go_fmt_options = "-local samsaradev.io"
autocmd FileType go setlocal tabstop=2|setlocal shiftwidth=2|setlocal softtabstop=2|setlocal noexpandtab
autocmd FileType go compiler go
au FileType go nmap gd <Plug>(go-def)

" optional go syntax highlighting options
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_arguments = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1

" autocomplete:
set completeopt=menuone
" remapping cntrl p to use fzg GFiles which searches non git ignored files
" names. It works just like vscode file search
:map <C-P> :GFiles <CR>
" ,n will revel the current file in nerdtree
:nmap ,n :NERDTreeFind<CR>

let g:dracula_italic = 0
set t_Co=256
set background=dark
colorscheme dracula

nnoremap <C-F> :Ggrep <cword><CR>
:command -nargs=+ Ggr execute 'silent Ggrep!' <q-args> | cw | redraw!

" remap esc to jj
imap jj <Esc>

:set ignorecase
:set smartcase

