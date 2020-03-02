" ##############################################################################
" # Editor                                                                     #
" ##############################################################################

set encoding=utf-8
set viminfo='50,<4096,s1000    " Store up to 4096 lines / 1 MB in viminfo
set autoindent                 " Automatically indent lines
set expandtab                  " Convert tabs to spaces
set tabstop=2                  " Tab = 2 spaces
set softtabstop=2
set shiftwidth=2               " Shift operations (<<, >>) use 2 spaces
set textwidth=0                " No maximum width
set number                     " Turn on line numbering
set relativenumber             " Turn on relative line numbering
set backspace=indent,eol,start " Ensure the backspace key works properly

" ##############################################################################
" # Searching                                                                  #
" ##############################################################################

set hlsearch                   " Highlight search results
set incsearch                  " Enable incremental searching
