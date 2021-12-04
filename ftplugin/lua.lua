-- lua lsp
local custom_attach, updated_capabilities, root_dir = require('utils').lsp_setup()
local sumneko_root_path = vim.fn.stdpath('data') .. '/lua-language-server'
local sumneko_binary = sumneko_root_path .. '/bin/Linux/lua-language-server'

require('lspconfig').sumneko_lua.setup {
  cmd = { sumneko_binary, '-E', sumneko_root_path .. '/main.lua' },
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
