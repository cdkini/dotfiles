let g:neoformat_run_all_formatters = 1
nnoremap <silent><leader>f :Neoformat<CR>
" let g:neoformat_enabled_python = ['black']
" let g:neoformat_enabled_go = ['gofmt', 'goimports']

" Run format on save
" augroup fmt
"   autocmd!
"   autocmd BufWritePre *.go, *.py undojoin | Neoformat
" augroup END
