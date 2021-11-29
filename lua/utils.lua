-- utils
local M = {}

-- better window resizing
-- source: https://github.com/ibhagwan/nvim-lua/blob/main/lua/utils.lua
-- @param vsplit (boolean)
-- @param margin (integer, e.g. 3/-3)
M.resize = function(vsplit, margin)
  local cur_win = vim.api.nvim_get_current_win()
  vim.api.nvim_command(string.format('wincmd %s', vsplit and 'l' or 'j'))
  local new_win = vim.api.nvim_get_current_win()
  local not_last = not (cur_win == new_win)
  local sign = margin > 0

  if (not_last == true) then
    vim.api.nvim_command('wincmd p')
  else
    sign = not sign
  end

  sign = sign and '+' or '-'
  local dir = vsplit and 'vertical ' or ''
  local cmd = dir .. 'resize ' .. sign .. math.abs(margin) .. '<CR>'
  vim.api.nvim_command(cmd)
end

-- vim.api.nvim_set_keymap wrapper, that uses default options if none are passed
-- @param mode (string)
-- @param mapping (string)
-- @param functionality (string)
-- @param options (table)
M.map = function(mode, mapping, functionality, options)
  local default_options = { noremap = true, silent = true }

  if (options == nil) then
    options = default_options
  end

  return vim.api.nvim_set_keymap(mode, mapping, functionality, options)
end

-- add mappings and autocmds after the language server attaches
M.custom_attach = function()
  local map = M.map

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

return M
