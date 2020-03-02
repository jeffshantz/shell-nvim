let mapleader = "\<Space>"

"Ctrl+P : Opens file list (fzf)
nnoremap <leader>f :Files<Cr>

command! -bang -nargs=* RgIgnore
  \ call fzf#vim#grep(
  \   "rg --column --line-number --no-heading --color=always --smart-case --hidden --iglob '!node_modules' --iglob '!.git' ".shellescape(<q-args>), 1,
  \   <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   "rg --column --line-number --no-heading --color=always --smart-case --hidden --no-ignore ".shellescape(<q-args>), 1,
  \   <bang>0)

"Ctrl+G : Search for content in files (fzf)
nnoremap <leader>g :RgIgnore<Cr>
nnoremap <leader>G :Rg<Cr>
nnoremap <leader>b :Buffers<Cr>

" Insert a blank line above or below without going into insert mode
nmap <Leader>O :normal O<CR>
nmap <Leader>o :normal o<CR>

" Press F3 to toggle line numbers on/off
noremap <F3> :set invnumber invrelativenumber<CR>
