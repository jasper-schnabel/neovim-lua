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

vim.fn.sign_define('DiagnosticSignError', { text = '⮀', texthl = 'DiagnosticSignError' })
vim.fn.sign_define('DiagnosticSignWarn', { text = '⮀', texthl = 'DiagnosticSignWarn' })
vim.fn.sign_define('DiagnosticSignInfo', { text = '⮀', texthl = 'DiagnosticSignInfo' })
vim.fn.sign_define('DiagnosticSignHint', { text = '⮀', texthl = 'DiagnosticSignHint' })
