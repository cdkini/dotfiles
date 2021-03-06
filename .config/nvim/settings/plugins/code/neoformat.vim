augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END


nnoremap <leader>f :Neoformat<CR>
