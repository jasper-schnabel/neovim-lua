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

  if not_last == true then
    vim.api.nvim_command('wincmd p')
  else
    sign = not sign
  end

  sign = sign and '+' or '-'
  local dir = vsplit and 'vertical ' or ''
  local cmd = dir .. 'resize ' .. sign .. math.abs(margin) .. '<CR>'
  vim.api.nvim_command(cmd)
end

-- a better version to toggle the drex drawer
M.drex_toggle = function()
  if require('drex.drawer').get_drawer_window() then
    require('drex.drawer').close()
  else
    if vim.api.nvim_buf_get_name(0) == '' then
      require('drex.drawer').open()
    else
      require('drex.drawer').find_element('%', true, true)
    end
  end
end

return M
