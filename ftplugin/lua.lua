-- lua lsp
local updated_capabilities, root_dir = require('utils').lsp_options()

require('lspconfig').sumneko_lua.setup {
  settings = { Lua = { diagnostics = { globals = { 'vim' } } } },
  capabilities = updated_capabilities,
  root_dir = root_dir,
}

-- automatically start lsp
vim.api.nvim_cmd({ cmd = 'LspStart' }, {})
