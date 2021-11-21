-- lspconfig
local function on_attach()
  local map = require('utils').map

  map('n', 'gd', ':lua vim.lsp.buf.definition()<CR>')
  map('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
  map('n', 'gy', ':lua vim.lsp.buf.implementation()<CR>')
  map('n', 'gb', ':lua vim.lsp.buf.type_definition()<CR>')
  map('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
  map('n', '<C-w>', ':lua vim.lsp.buf.signature_help()<CR>')
  map('n', '<leader>lr', ':lua vim.lsp.buf.rename()<CR>')
  map('n', '<leader>la', ':lua vim.lsp.buf.code_action()<CR>')
  map('n', '<C-n>', ':lua vim.diagnostic.goto_next()<CR>')
  map('n', '<C-p>', ':lua vim.diagnostic.goto_prev()<CR>')
  map('n', '<space>wa', ':lua vim.lsp.buf.add_workspace_folder()<CR>')
  map('n', '<space>wr', ':lua vim.lsp.buf.remove_workspace_folder()<CR>')
  map('n', '<space>wl', ':lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>')
  map('n', '<leader>li', ':LspInfo<CR>')
  map('n', '<leader>ls', ':LspStop<CR>')

  vim.api.nvim_command('autocmd CursorHold,CursorHoldI <buffer> lua vim.lsp.buf.document_highlight()')
  vim.api.nvim_command('autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()')
end

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

-- servers and signs still need to be setup
