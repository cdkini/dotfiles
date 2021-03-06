" show hover doc
nnoremap <silent> K <cmd>lua require('lspsaga.hover').render_hover_doc()<CR>

" lsp provider to find the cursor word definition and reference
nnoremap <silent> gh <cmd>lua require'lspsaga.provider'.lsp_finder()<CR>

" preview definition
nnoremap <silent> gd <cmd>lua require'lspsaga.provider'.preview_definition()<CR>

" show signature help
nnoremap <silent> gs <cmd>lua require('lspsaga.signaturehelp').signature_help()<CR>

" code action
nnoremap <silent>ga <cmd>lua require('lspsaga.codeaction').code_action()<CR>
vnoremap <silent>ga <cmd>'<,'>lua require('lspsaga.codeaction').range_code_action()<CR>

" jump diagnostic
nnoremap <silent> <C-e> <cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>

" show all diagnostics
nnoremap <silent><leader>td <cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>

" rename
nnoremap <silent><leader>rn <cmd>lua require('lspsaga.rename').rename()<CR>

