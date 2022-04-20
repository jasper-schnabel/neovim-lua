-- cryoline
require('cryoline').config {
  force_ft = { 'qf', 'help', 'drex', 'TelescopePrompt' },
  ft = {
    qf = '%=Quickfix%=',
    help = '%=Help %t%=',
    drex = '%=File Tree%=',
    TelescopePrompt = '%=Telescope%=',
  },
  line = function(context)
    local line = '%=%f%='
    local modes = {
      ['n'] =  { 'NORMAL', '%#CryolineNormal#' },
      ['no'] = { 'NORMAL', '%#CryolineNormal#' },
      ['v'] =  { 'VISUAL', '%#CryolineVisual#' },
      ['V'] =  { 'V-LINE', '%#CryolineVisual#' },
      [''] = { 'V-BLOCK', '%#CryolineVisual#' },
      ['s'] =  { 'SELECT', '%#CryolineSelect#' },
      ['S'] =  { 'S-LINE', '%#CryolineSelect#' },
      [''] = { 'S-BLOCK', '%#CryolineSelect#' },
      ['i'] =  { 'INSERT', '%#CryolineInsert#' },
      ['ic'] = { 'INSERT', '%#CryolineInsert#' },
      ['R'] =  { 'REPLACE', '%#CryolineReplace#' },
      ['Rv'] = { 'V-REPLACE', '%#CryolineReplace#' },
      ['c'] =  { 'COMMAND', '%#CryolineElse#' },
      ['cv'] = { 'VIM EX', '%#CryolineElse#' },
      ['ce'] = { 'EX', '%#CryolineElse#' },
      ['r'] =  { 'PROMPT', '%#CryolineElse#' },
      ['rm'] = { 'MORE', '%#CryolineElse#' },
      ['r?'] = { 'CONFIRM', '%#CryolineElse#' },
      ['!'] =  { 'SHELL', '%#CryolineElse#' },
      ['t'] =  { 'TERMINAL', '%#CryolineElse#' },
    }

    local mode = function()
      local current_mode = vim.api.nvim_get_mode().mode

      return string.format('%s %s ', modes[current_mode][2], modes[current_mode][1])
    end

    if context.active then
      line = mode() .. '%#StatusLine# %t %R %=' .. context.ft .. ' %p%% %l:%c '
    end

    return line
  end
}
