" My vim configuration file

set nocompatible    " running Vim, not Vi!
filetype off

" vundle!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let vundle manage vundle!
Bundle 'gmarik/vundle'

" Bundles to install
Bundle 'vim-scripts/Color-Sampler-Pack'
Bundle 'vim-scripts/ScrollColors'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'godlygeek/tabular'
Bundle 'int3/vim-taglist-plus'

syntax on           " enable syntax highlighting (sets `filetype` to on as well)
filetype plugin on  " enable filetype-specific indenting
filetype indent on  " enable filetype-specific plugins

" associate .json with .js
au BufRead,BufNewFile *.json setfiletype javascript

" associate .less with .css
au BufRead,BufNewFile *.less setfiletype css

set textwidth=80    " set text width to 80 columns per line 
set title           " show the title
set number          " display line numbers

" automatically indent when adding braces
set autoindent
set smartindent

" tabs to be converted to a group of 4 spaces
set shiftwidth=4    " auto-indent amount (when using smartindent, cindent, etc)
set softtabstop=4   " when hitting tab or backspace, how many spaces will a tab be
set tabstop=4       " real tabs occupy 4 columns - will show with set list on
set expandtab       " no real tabs! convert them to spaces
set smarttab

" mininum number of lines to keep below and above the cursor
set scrolloff=999

" use UTF-8
set encoding=utf-8

" turn on command-line completion
set wildmenu

set history=1000
set mouse=a

" enable line numbers for NERDTree's explorer tab
let NERDTreeShowLineNumbers=1

" NERDTree on F2
map <F2> :NERDTreeToggle<CR>

" Taglist Plus on F3
map <F3> :TlistToggle<CR>

" Invisible characters on \l
nmap <leader>l :set list!<CR>

" change symbols for invisible characters
set listchars=tab:▸\ ,eol:¬

" Highlight invisible characters
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
