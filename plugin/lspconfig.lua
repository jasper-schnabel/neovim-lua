-- lspconfig
vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, {
  border = 'rounded',
  focusable = false,
})

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, {
  border = 'rounded',
  focusable = false,
})

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

local signs = { 'Error', 'Warn', 'Hint', 'Info' }

for _, type in pairs(signs) do
  local hl = 'DiagnosticSign' .. type
  vim.fn.sign_define(hl, { text = '▶', texthl = hl })
end

-- setup code_action and rename ui
require('suit').setup {
  input = {
    border = 'rounded',
    hl_prompt = 'Boolean',
  },
  select = {
    border = 'rounded',
    hl_prompt = 'Boolean',
  },
}

-- setup debugger
require('debugprint').setup()
