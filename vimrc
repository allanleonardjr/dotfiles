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
"Plug 'altercation/vim-colors-solarized'
"" https://github.com/mxw/vim-jsx
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
"Plug 'valloric/youcompleteme' " Follow installation instructions: (https://vimawesome.com/plugin/youcompleteme#mac-os-x)
Plug 'gorkunov/smartpairs.vim' " This allows smart selections to convert 'vi*' commands into 'viv' commands
Plug 'wellle/targets.vim'
Plug 'sbdchd/neoformat'
Plug 'jkramer/vim-checkbox' " If not working then follow installation instructions from: https://github.com/jkramer/vim-checkbox
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'machakann/vim-highlightedyank'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'tyru/open-browser.vim'
Plug 'Valloric/MatchTagAlways' "Used to highlight matching XML/HTML tags that enclose the cursor location
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mbbill/undotree'
"Plug 'Valloric/YouCompleteMe', { 'do': './install.py --ts-completer' }
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'mattn/calendar-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'flazz/vim-colorschemes'
Plug 'felixhummel/setcolors.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'makerj/vim-pdf'
Plug 'tpope/vim-obsession'
Plug 'jparise/vim-graphql'
Plug 'mattn/emmet-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Decided to use grip for realtime markdown previews - (https://github.com/joeyespo/grip)
"Plug 'previm/previm' 
"Plug 'suan/vim-instant-markdown' " --- (not working - https://github.com/suan/instant-markdown-d/issues/13)

"" Asynchronous completion
"if has('nvim') " https://github.com/Shougo/deoplete.nvim
  "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"else
  "Plug 'Shougo/deoplete.nvim'
  "Plug 'roxma/nvim-yarp'
  "Plug 'roxma/vim-hug-neovim-rpc'
"endif
"let g:deoplete#enable_at_startup = 1
"" Binary path to your flow, defaults to your $PATH flow 
"let g:deoplete#sources#flow#flow_bin = 'flow' 


" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'html', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

" Follow installation instructions: (https://vimawesome.com/plugin/youcompleteme#mac-os-x)
" 1.) cd ~/.vim/plugged/youcompleteme
" 2.) ./install.py
"Plug 'valloric/youcompleteme' 
" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set dark solarized theme
"set term=xterm-256color
set background=dark
color  palenight "solarized8_dark_flat

" Colorizer
"let g:colorizer_auto_color = 1
let g:colorizer_auto_filetype='css,html,js,jsx,javascript,javascript.jsx'

syntax on
" -- Autocompletion --
filetype plugin indent on
"set omnifunc=syntaxcomplete#Complete " https://medium.com/vim-drops/css-autocompletion-on-vim-no-plugins-needed-e8df9ce079c7


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show status bar along with full file path
"set laststatus=2

" Set Airline Theme
let g:airline_theme = 'soda'

" Enable powerline font (so we can get those pretty arrows on the status lines)
let g:airline_powerline_fonts = 1

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

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
set mouse+=a
"set ttymouse=xterm2

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
" => Move lines of text up and down 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" On Mac we can't send Alt+key because Alt is used to add unicode characters 
" so we can just use the literal character in the map command (∆˚¬…)
" https://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim

" Normal mode
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

" Insert mode
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

" Visual mode
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set the number of columns on the left for folding display to 3
set foldcolumn=3
" Set folding method to markers
"set foldmethod=marker
set foldmethod=indent
set foldlevel=99
nnoremap <space> za

" Turn on folding for markdown files
let g:markdown_folding=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" By default, JSX syntax highlighting and indenting will be enabled only for files with the .jsx extension. If you would like JSX in .js files, add:
let g:jsx_ext_required = 0

" Clipboard
" set clipboard=unnamed

" Checkboxes
let g:checkbox_states = [' ', '-', 'X']

" Markdown Previewing in Browser
"   :PrevimOpen - Opens the current file on the browser.
"let g:previm_enable_realtime=1 " This will update the browser in realtime

" make vim-fugitive (and others) use vertical splits instead of horizontal
set diffopt+=vertical

" MatchTagAlways jump to the closing tag
nnoremap <Leader>% :MtaJumpToOtherTag<CR>

" Sets the filetypes for MatchTagAlways to work on
let g:mta_filetypes = {
    \ 'javascript.jsx' : 1,
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}

" vimwiki/vimwiki
let g:vimwiki_list = [
  \{'path': '~/vimwiki/personal', 'syntax': 'markdown', 'ext': '.md'},
  \{'path': '~/vimwiki/3jpmedia', 'syntax': 'markdown', 'ext': '.md'},
  \{'path': '~/vimwiki/spiritual', 'syntax': 'markdown', 'ext': '.md'},
  \]
let g:vimwiki_table_mappings=1

"Mappings
" This will allow us to type "kj" in insert mode to act as if we pressed the Escape key
inoremap kj <esc>

" Quickly save files by using ",," 
nnoremap ,, :w<CR>
"inoremap ,, <C-c>:w<CR>a

" Terminal Settings
highlight TermCursor ctermfg=red guifg=red
tnoremap <ESC> <C-\><C\n>
tnoremap kj <C-\><C-n>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open NERDTree regardless of whether a file was opened or not
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd l

" Open NERDTree ONLY if no file was opened when starting Vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | wincmd l | endif

" Close Vim if NERDTree is the only remaining window opened
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') | q | endif

" Mappings
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <Leader>g :NERDTreeFind<Enter>
noremap <F8> :NERDTreeToggle<CR>
nnoremap ; :Buffers<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Undotree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>u :UndotreeToggle<CR>
if has("persistent_undo")
    set undodir=$HOME/.undodir
    set undofile
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Searching, Yanking, Etc.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if exists('&inccommand')
  "	"nosplit": Shows the effects of a command incrementally, as you type.
  "	"split"	 : Also shows partial off-screen results in a preview window.
  set inccommand=split " Either split or nosplit
endif

" Tired of clearining highlighted searches by searching for "asdfdfllhkj"? Use this:
nnoremap ,/ :nohlsearch<CR>

" Tell Ctrl+P to ignore the following
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => coc.nvim - Conquer of Completion (https://github.com/neoclide/coc.nvim)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
"set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

"" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
" Note coc#float#scroll works on neovim >= 0.4.0 or vim >= 8.2.0750
nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"

" NeoVim-only mapping for visual mode scroll
" Useful on signatureHelp after jump placeholder of snippet expansion
if has('nvim')
  vnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#nvim_scroll(1, 1) : "\<C-f>"
  vnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#nvim_scroll(0, 1) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ESLint though Vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" https://medium.com/@alexlafroscia/writing-js-in-vim-4c971a95fd49
let g:ale_fixers = {
  \ 'javascript': ['eslint']
  \ }


" Increase the timeout so we we have more time to use commands (like the surround command)
set timeout timeoutlen=3000

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Windows/Tabs, Splits 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Some good nuggets on: https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
" Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright

" We can use different key mappings for easy navigation between splits to save a keystroke. 
" So instead of ctrl-w then j, it’s just ctrl-j: Mapping left, down, up, right
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
" Mappings to easily move a split to the left, bottom, top, right
"nnoremap <A-h> <C-w><S-h>
"nnoremap <A-j> <C-w><S-j>
"nnoremap <A-k> <C-w><S-k>
"nnoremap <A-l> <C-w><S-l>


" Go to tab by number (similar to Chrome but using Leader keep instead of Command Key)
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>
nnoremap <Leader>t :tabnew<CR>
