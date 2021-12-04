-- css lsp
local custom_attach, updated_capabilities, root_dir = require('utils').lsp_setup()

require('lspconfig').cssls.setup {
  on_attach = custom_attach,
  capabilities = updated_capabilities,
  root_dir = root_dir,
  flags = {
    debounce_text_changes = 150,
  },
}

-- automatically start lsp
vim.api.nvim_command('LspStart')
