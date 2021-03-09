" UNDOTREE:
" {{{
  let g:undotree_WindowLayout=2
  nnoremap <leader>tu :UndotreeToggle<CR>
" }}}

if has("persistent_undo")
    set undodir=$HOME/.undodir
    set undofile
endif
