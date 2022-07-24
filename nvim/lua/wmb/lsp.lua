require'lspconfig'.pyright.setup{}

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('<leader>', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('<leader>', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('<leader>', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('<leader>', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('<leader>', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('<leader>', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('<leader>', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('<leader>', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('<leader>', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('<leader>', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('<leader>', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('<leader>', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('<leader>', '<space>f', vim.lsp.buf.formatting, bufopts)
end

