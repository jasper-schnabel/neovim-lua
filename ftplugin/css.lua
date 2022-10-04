-- css lsp
local updated_capabilities, root_dir = require('utils').lsp_options()

require('lspconfig').cssls.setup {
  capabilities = updated_capabilities,
  root_dir = root_dir,
}

require('lspconfig').emmet_ls.setup {
  capabilities = updated_capabilities,
  root_dir = root_dir,
}

-- automatically start lsp
vim.api.nvim_cmd({ cmd = 'LspStart' }, {})
