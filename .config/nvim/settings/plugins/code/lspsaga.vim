" show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>

"scroll down hover doc or scroll in definition preview
nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>
" scroll up hover doc
nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>

" lsp provider to find the cursor word definition and reference
nnoremap <silent> gh :Lspsaga lsp_finder<CR>

" preview definition
nnoremap <silent> gd :Lspsaga preview_definition<CR>

" show signature help
nnoremap <silent> gs :Lspsaga signature_help<CR>

" code action
nnoremap <silent>ga :Lspsaga code_action<CR>
vnoremap <silent>ga :<C-U>Lspsaga range_code_action<CR>

" jump diagnostic
nnoremap <silent> [e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent> ]e :Lspsaga diagnostic_jump_prev<CR>

" show all diagnostics
nnoremap <silent> <leader>td :Lspsaga show_line_diagnostics<CR>

" rename
nnoremap <silent><leader>rn <cmd>lua require('lspsaga.rename').rename()<CR>
