" FZF:
" {{{
  " Ctrl + P uses fzf to search project files
  nnoremap <silent> <C-p> :GFiles<CR>
  nnoremap <silent> <Leader><C-p> :Files<CR>

  " Ctrl + / uses fzf to search all lines in open buffers
  nnoremap <silent> <C-_> :Lines<CR>

  " Leader + pb uses fzf to view open buffers
  nnoremap <silent> <Leader>pb :Buffers<CR>

  " Leader + ps uses ripgrep to grep project
  nnoremap <silent> <Leader>ps :Rg<CR>
" }}}
