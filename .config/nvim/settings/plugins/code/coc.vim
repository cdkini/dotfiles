" COC:
" {{{
  " Set node path
  let g:coc_node_path='/usr/bin/nodejs'

  " GoTo code navigation.
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Show documentation in preview window.
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  " Format selected text
  vmap <Leader>f <Plug>(coc-format-selected)
  nmap <Leader>f <Plug>(coc-format-selected)

  " Use tab for trigger completion with characters ahead and navigate.
  inoremap <silent><expr> <TAB> pumvisible() ? "\<C-n>" : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  " <C-Space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()

  " Use <CR> to comfirm completion.
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

  " Make <CR> auto-select the first completion item and notify coc.nvim to
  " format on enter, <cr> could be remapped by other vim plugin
  inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                               \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

  " Better nav for intellisense
  inoremap <expr> <c-j> ("\<C-n>")
  inoremap <expr> <c-k> ("\<C-p>")

  " Navigate diagnostics
  nmap <silent> <c-e> <Plug>(coc-diagnostic-next)

  " CoC - Show documentation for cursor text
  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
     execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
     call CocActionAsync('doHover')
    else
     execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction

  " CoC - Helper used in tab completion
  function! s:check_back_space() abort
   let col = col('.') - 1
   return !col || getline('.')[col - 1]  =~# '\s'
  endfunction
