nnoremap <silent><leader>b> :BufferMoveNext <CR>
nnoremap <silent><leader>b< :BufferMovePrevious <CR>
nnoremap <silent><leader>bb :BufferPick <CR>
nnoremap <silent><leader>bd :BufferClose <CR>
nnoremap <silent><leader>b? :Buffers <CR>

" TAB in general mode will move to text buffer
nnoremap <silent> <TAB> :BufferNext<CR>
nnoremap <silent> <S-TAB> :BufferPrevious<CR>
