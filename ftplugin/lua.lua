-- lua lsp
local custom_attach, updated_capabilities, root_dir = require('utils').lsp_setup()

require('lspconfig').sumneko_lua.setup {
  settings = { Lua = { diagnostics = { globals = {'vim'} } } },
  on_attach = custom_attach,
  capabilities = updated_capabilities,
  root_dir = root_dir,
}

-- automatically start lsp
vim.api.nvim_command('LspStart')
