" To Install The Plugin Manager follow these directions
" https://github.com/junegunn/vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" - Avoid using standard Vim directory names like 'plugin'
"   ============================================================
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-surround' " (https://vimawesome.com/plugin/surround-vim)
Plug 'chrisbra/Colorizer'
Plug 'altercation/vim-colors-solarized'
"" https://github.com/mxw/vim-jsx
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'valloric/youcompleteme' " Follow installation instructions: (https://vimawesome.com/plugin/youcompleteme#mac-os-x)

" Follow installation instructions: (https://vimawesome.com/plugin/youcompleteme#mac-os-x)
" 1.) cd ~/.vim/plugged/youcompleteme
" 2.) ./install.py
Plug 'valloric/youcompleteme' 
" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set dark solarized theme
set term=xterm-256color
set background=dark
color solarized

syntax on
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show status bar along with full file path
set laststatus=2

" Set Airline Theme
let g:airline_theme="luna"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show the command letters (down in the status area) as we type them
set showcmd

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Allow mouse click to position cursor
set mouse=a

" Decrease update time from 4 seconds to 250 miliseconds
set updatetime=250 " suggested by vim-gutter

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Stop quotes from being hidden in json files
set conceallevel=0

" Disable automatic comment insertion on the next line
set formatoptions-=cro

" Show numbering and relative numbering 
set number
set relativenumber

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the number of columns on the left for folding display to 3
set foldcolumn=3
" Set folding method to markers
"set foldmethod=marker
nnoremap <space> za

" Turn on folding for markdown files
let g:markdown_folding=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" By default, JSX syntax highlighting and indenting will be enabled only for files with the .jsx extension. If you would like JSX in .js files, add:
let g:jsx_ext_required = 0

" Clipboard
"set clipboard=unnamed

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F8> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" By default, JSX syntax highlighting and indenting will be enabled only for files with the .jsx entension. If you would like JSX in .js files, add
let g:jsx_ext_require = 0

" This will open NERDTree automatically when vim starts up regardless if a file was given or not
autocmd vimenter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <Leader>g :NERDTreeFind<Enter>
