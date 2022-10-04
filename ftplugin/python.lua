-- python lsp
local updated_capabilities, root_dir = require('utils').lsp_options()

require('lspconfig').pyright.setup {
  capabilities = updated_capabilities,
  root_dir = root_dir,
}

-- automatically start lsp
vim.api.nvim_cmd({ cmd = 'LspStart' }, {})
