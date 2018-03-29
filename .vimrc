set nocompatible
filetype off 

set laststatus=2

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Filesystem stuffs
Plugin 'scrooloose/nerdtree'

" Code folding 
Plugin 'tmhedberg/SimpylFold'

" Colors
Plugin 'jnurmine/Zenburn'

" Code completion - python
Plugin 'rkulla/pydiction'

" Status bar
Plugin 'vim-airline/vim-airline'

" Supa search
Plugin 'kien/ctrlp.vim'

" Syntax
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'

" Git
Plugin 'tpope/vim-fugitive'

call vundle#end()

filetype plugin indent on
let python_highlight_all=1
syntax enable
"
" Location of completion stuff
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

" Colors
set t_Co=256
colorscheme zenburn

" Show line numbers
set number

" Enable folding
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview = 1

" Enable folding with spacebar
nnoremap <space> za

" PEP8
au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

" Flag whitespace
highlight BadWhitespace ctermbg=red

au BufRead, BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
au BufRead, BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/

" Open/Close NERDTree with Ctrl+G
nnoremap <C-g> :NERDTreeToggle<CR>

" Show docstrings for folded code
let g:SimpylFold_docstring_preview=1

" UTF-8
set encoding=utf-8

" ignore certain file types in NERDTree
let NERDTreeIgnore=['\.pyc$','\~$']

" Syntastic stuff 
let g:syntastic_python_checkers = ['flake8', 'python']
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_always_populate_loc_list = 1
