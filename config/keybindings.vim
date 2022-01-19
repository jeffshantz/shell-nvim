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

nmap <leader>dwo dwi<CR><Esc>

" Press F3 to toggle line numbers on/off
"noremap <F3> :set invnumber invrelativenumber<CR>
noremap <F3> :call ToggleGutter()<CR>

function! ToggleGutter()
  if &signcolumn == "yes"
    set norelativenumber nonumber
    set signcolumn=no
  else
    set relativenumber number
    set signcolumn=yes
  endif
endfunction

vmap <leader>p  <Plug>(coc-format-selected)
nmap <leader>p  <Plug>(coc-format-selected)

nmap <leader>c  gcc
vmap <leader>c  <Plug>Commentary

" Show function documentation on (leader).
nnoremap <leader>. :call CocAction('doHover')<CR>

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#float#has_float() == 0 && CocHasProvider('hover') == 1)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(3000, 'ShowDocIfNoDiagnostic')
endfunction

autocmd CursorHoldI * :call <SID>show_hover_doc()
autocmd CursorHold * :call <SID>show_hover_doc()

nnoremap <silent> <leader>e :<C-u>CocList diagnostics<cr>
nnoremap <silent> <leader>s :<C-u>CocList -I symbols<cr>
nmap <silent> <F5> :e. <cr>
nmap <silent> <leader>rn <Plug>(coc-rename)
nmap <silent> <leader>do <Plug>(coc-codeaction)


