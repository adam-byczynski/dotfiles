" --------------------------------------------------------
" ---------------------- NERDTree ----------------------
" To download NERDTree checkout https://github.com/preservim/nerdtree

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" Show number of lines in file in NERDTree
let g:NERDTreeFileLines = 1

" Show dotfiles etc.
let NERDTreeShowHidden = 1

" --------------------------------------------------------
" ---------------------- VIM config ----------------------
scriptencoding utf-8
set encoding=utf-8

" more trouble than they're worth, really
set nobackup
set noswapfile
" but protect against crash-during-write by saving to a separate file and
" replacing the old
set writebackup

" persist the undo tree for each file
set undofile
set undodir^=~/.vim/undo//

" longer history
set history=1000

" make tab completion in command mode work like shell
set wildmenu
set wildmode=longest,list:longest

" complete with current buffer, loaded buffers, unloaded buffers, and tags
set complete=.,b,u,t

" complete using a popup menu, show a preview
set completeopt=menu,preview

" keeps three lines before/after cursor when scrolling
set scrolloff=3

" 4-character indents with no hard tabs
set sw=4 
set sts=4 
set ts=4 
set expandtab      

" Allow backspacing over beginning of insert barrier
set backspace=2

" Display row/column in status bar
set ru

" Syntax highlighting on
syntax on

" line numbers
set nu

" Highlight search matches
set hlsearch

" set default foldmethod
set foldmethod=indent "fold based on indent
set foldnestmax=3 "deepest fold is 3 levels
set nofoldenable "dont fold by default

" automatically reload on external file change
set autoread

" allow unsaved hidden buffers
set hidden

" round indents to multiple of shiftwidth
set shiftround

" show matching brackets
set showmatch
set matchtime=2

" don't change directories when opening files from external
set noautochdir

" turn on spell check
" set spell

" set sh=/bin/zsh\ -l
" set colorcolumn=120
