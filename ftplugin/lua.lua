-- lua lsp
local custom_attach, updated_capabilities, root_dir = require('utils').lsp_setup()

require('lspconfig').sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
      },
      diagnostics = {
        globals = {'vim'},
      },
      workspace = {
        library = vim.api.nvim_get_runtime_file('', true),
      },
    },
  },
  on_attach = custom_attach,
  capabilities = updated_capabilities,
  root_dir = root_dir,
  flags = {
    debounce_text_changes = 150,
  },
}

-- automatically start lsp
vim.api.nvim_command('LspStart')
