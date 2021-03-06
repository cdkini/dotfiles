:lua << EOF
  local nvim_lsp = require('lspconfig')
  local on_attach = function(_, bufnr)
    local opts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  end
  local servers = {'jsonls', 'pyls', 'vimls', 'clangd', 'gopls', 'tsserver', 'cssls', 'html', 'jdtls', 'sumneko_lua'}
  for _, lsp in ipairs(servers) do
    nvim_lsp[lsp].setup {
      on_attach = on_attach,
    }
  end
EOF

command! Format execute 'lua vim.lsp.buf.formatting()'
