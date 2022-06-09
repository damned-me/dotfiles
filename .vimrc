" vi retrocompatibility
set nocompatible

" file detection. Vim will be able to try to detect the type of file in use.
filetype on
filetype plugin on
filetype indent on

" syntax highlighting
syntax on

" mouse scrolling
set mouse=a

" line numbers
set number

" highlight cursor line
set cursorline
" set cursorcolumn

" shift width
set shiftwidth=4

" tab width
set tabstop=4

" use space instead of tabs
set expandtab

" not save backups
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" not wrap lines
" set nowrap

" incremental search highlighting
set incsearch

" insensitive case search
set ignorecase

" smart case search (override ignorecase)
set smartcase

" show partial command
set showcmd

" show mode at last line
set showmode

" show matching words search
set showmatch

" search highlighting
set hlsearch

" save history (default number 20)
set history=1000

" ##### WIDLMENU #####

" TAB auto completion menu
set wildmenu

" wildmenu like Bash completion
set wildmode=list:longest

" ignored wildmenu files extensions
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" ####################


" ##### PLUGINS #####

call plug#begin('~/.vim/plugged')

  Plug 'dense-analysis/ale'
  Plug 'preservim/nerdtree'
  " Plug 'preservim/vim-markdown'
  Plug 'iamcco/mathjax-support-for-mkdp'
  Plug 'iamcco/markdown-preview.vim'

call plug#end()

" ###################



" ##### MAPPINGS #####

" mappings code

" ####################


" ##### VIMSCRIPT #####

" enable code folding
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" Vimscripts code

" #####################


" ##### STATUS LINE ##### 

" status bar code

" #######################
