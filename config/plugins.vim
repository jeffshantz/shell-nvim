call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Use release branch (Recommend)
Plug 'neoclide/coc.nvim',     {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'leafgarland/typescript-vim'

Plug 'iamcco/coc-angular',    {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json',     {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html',     {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css',      {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-phpls',     {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-pairs',     {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-python',     {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-highlight',  {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-snippets',  {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-lists',  {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-git', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-yank', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-svg', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-xml', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-elixir', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-elang_ls', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-omnisharp', {'do': 'yarn install --frozen-lockfile'}
"Plug 'neoclide/coc-texlab', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml',     {'do': 'yarn install --frozen-lockfile'}
call plug#end()
