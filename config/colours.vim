" ##############################################################################
" # Syntax highlighting                                                        #
" ##############################################################################

if (has("termguicolors"))
  set termguicolors
endif

set t_Co=256                        " 8 colours
let base16colorspace=256            " Access colors present in 256 colorspace

syntax on                           " syntax highlighing
filetype on                         " try to detect filetypes
filetype plugin indent on           " enable loading indent file for filetype

" https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" ##############################################################################
" # Colour scheme                                                              #
" ##############################################################################

if empty($COLORFGBG)
  set background=dark
endif

function Dark1()
  set background=dark
  colorscheme base16-phd
  AirlineTheme deus
endfunction

function Dark2()
  set background=dark
  colorscheme base16-ocean
  AirlineTheme deus
endfunction

function Dark3()
  set background=dark
  colorscheme base16-solarized-dark
  AirlineTheme deus
endfunction

function Dark4()
  set background=dark
  colorscheme base16-tomorrow-night
  AirlineTheme deus
endfunction
"
" silent! prevents error on first run, before NeoBundle has a chance to install
" the solarized colour scheme.
silent! call Dark1()

