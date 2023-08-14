-- lspconfig
vim.diagnostic.config {
  underline = true,
  signs = true,
  virtual_text = {
    spacing = 5,
    prefix = '◼',
    source = 'if_many',
  },
  float = {
    source = 'if_many',
    border = 'rounded',
    focusable = false,
  },
  update_in_insert = true,
  severity_sort = true,
}

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = 'rounded',
  focusable = false,
})

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = 'rounded',
  focusable = false,
})

local signs = { 'Error', 'Warn', 'Hint', 'Info' }

for _, type in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = '▶', texthl = hl })
end

vim.lsp.protocol.completion_icons = {
  Text = " ",
  Method = " ",
  Function = " ",
  Constructor = " ",
  Field = " ",
  Variable = " ",
  Class = "ﴯ ",
  Interface = "פּ ",
  Module = " ",
  Property = " ",
  Unit = "塞 ",
  Value = " ",
  Enum = " ",
  Keyword = " ",
  Snippet = " ",
  Color = " ",
  File = " ",
  Reference = " ",
  Folder = " ",
  EnumMember = " ",
  Constant = " ",
  Struct = "פּ ",
  Event = " ",
  Operator = " ",
  TypeParameter = " ",
}

local servers = { 'cssls', 'emmet_ls', 'html', 'tsserver', 'lua_ls', 'pyright', 'bashls' }

for _, lsp in pairs(servers) do
  local config = {
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    root_dir = vim.loop.cwd,
  }

  if lsp == 'lua_ls' then
    config.settings = { Lua = { diagnostics = { globals = { 'vim' } } } }
  end

  require('lspconfig')[lsp].setup(config)
end
