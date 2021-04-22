:lua << EOF

    local nvim_lsp = require('lspconfig')
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

      buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings.
      local opts = { noremap=true, silent=true }
        vim.cmd("nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>")
        vim.cmd("nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>")
        vim.cmd("nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>")
        vim.cmd("nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>")
        vim.cmd("nnoremap <silent> ca :Lspsaga code_action<CR>")
        vim.cmd("nnoremap <silent> K :Lspsaga hover_doc<CR>")
        vim.cmd("nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>")
        vim.cmd("nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>")
        vim.cmd("nnoremap <silent> <C-f> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>")
        vim.cmd("nnoremap <silent> <C-b> <cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>")

      -- Set autocommands conditional on server_capabilities
--      if client.resolved_capabilities.document_highlight then
--        vim.api.nvim_exec([[
--          hi LspReferenceRead cterm=bold ctermbg=red guibg=LightYellow
--          hi LspReferenceText cterm=bold ctermbg=red guibg=LightYellow
--          hi LspReferenceWrite cterm=bold ctermbg=red guibg=LightYellow
--          augroup lsp_document_highlight
--            autocmd! * <buffer>
--            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
--            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
--          augroup END
--        ]], false)
--      end
--    end

    -- Use a loop to conveniently both setup defined servers 
    -- and map buffer local keybindings when the language server attaches
    -- local servers = { "pyright", "gopls"}
    -- for _, lsp in ipairs(servers) do
--       nvim_lsp[lsp].setup { on_attach = on_attach }
  --   end

--     vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--      vim.lsp.diagnostic.on_publish_diagnostics, {
--        virtual_text = false,
--        underline = true,
--        signs = true,
--      }
--    )
--     vim.cmd [[autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()]]
--     vim.cmd [[autocmd CursorHoldI * silent! lua vim.lsp.buf.signature_help()]]

    vim.fn.sign_define(
        "LspDiagnosticsSignError",
        {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"}
    )
    vim.fn.sign_define(
        "LspDiagnosticsSignWarning",
        {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"}
    )
    vim.fn.sign_define(
        "LspDiagnosticsSignHint",
        {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"}
    )
    vim.fn.sign_define(
        "LspDiagnosticsSignInformation",
        {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"}
    )

    require'lspconfig'.pyright.setup{}
    require'lspconfig'.gopls.setup{}
EOF
