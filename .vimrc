" My vim configuration file

set nocompatible    " running Vim, not Vi!
set t_Co=256
set t_ut=           " disable background color erase
set background=dark
set termencoding=utf-8

filetype on     " so vim doesn't exit with an error (affects stock OSX vim)
filetype off    " need this for vundle to work!

" vundle!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let vundle manage vundle!
Bundle 'gmarik/vundle'

" Bundles to install
Bundle 'benmills/vimux'
Bundle 'bling/vim-airline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'digitaltoad/vim-jade'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'
Bundle 'leshill/vim-json'
Bundle 'gregsexton/gitv'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'godlygeek/tabular'
Bundle 'int3/vim-taglist-plus'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-markdown'
Bundle 'Townk/vim-autoclose'
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'suan/vim-instant-markdown'
Bundle 'othree/yajs.vim'

filetype plugin indent on   " automatically detect filetypes

syntax on                   " enable syntax highlighting (sets `filetype` to on as well)
let g:solarized_termcolors=256
let g:solarized_visibility="low"
colorscheme solarized

set timeoutlen=250  " time in ms to wait after pressing ESC
set textwidth=80    " set text width to 80 columns per line 
set title           " show the title
set number          " display line numbers
set laststatus=2    " always show the status line
set encoding=utf-8  " set encoding to UTF-8
set cmdheight=2     " set the commandline height to 2
set autoread        " automatically reload the file if there are changes

" automatically indent when adding braces
set autoindent
set smartindent

" tabs to be converted to a group of 4 spaces
set shiftwidth=2    " auto-indent amount (when using smartindent, cindent, etc)
set softtabstop=2   " when hitting tab or backspace, how many spaces will a tab be
set tabstop=2       " real tabs occupy 4 columns - will show with set list on
set expandtab       " no real tabs! convert them to spaces
set smarttab

" clipboard
set clipboard=unnamed

" folding options
set foldenable
set foldmethod=syntax
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag

" turn on command-line completion
set wildmenu

set history=1000
set mouse=a

" set splitting
set splitbelow
set splitright

" NERDTree
let NERDTreeShowLineNumbers=1 " enable line numbers
let NERDTreeShowHidden=1

" NERDTree on F2
map <F2> :NERDTreeToggle<CR>

" Taglist Plus on F3
map <F3> :TlistToggle<CR>

" Invisible characters on \l
nmap <LEADER>l :set list!<CR>

" Change tabwidth on \2, \4 and \8
nmap <LEADER>2 <ESC>:set expandtab tabstop=2 softtabstop=2 shiftwidth=2<CR>
nmap <LEADER>4 <ESC>:set expandtab tabstop=4 softtabstop=4 shiftwidth=4<CR>
nmap <LEADER>8 <ESC>:set expandtab tabstop=8 softtabstop=8 shiftwidth=8<CR>

" change symbols for invisible characters
set listchars=tab:▸\ ,eol:¬

" airline configuration
" let g:airline_powerline_fonts  = 1
let g:airline#extensions#branch#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" old vim-powerline symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.linenr = '⭡'
let g:airline_symbols.branch = '⭠'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'ξ'
let g:airline_symbols.readonly = '⭤'
