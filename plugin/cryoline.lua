-- cryoline
require('cryoline').config {
  force_ft = { 'qf', 'help', 'drex' },
  ft = {
    qf = '%=Quickfix%=',
    help = '%=Help %t%=',
    drex = '%=File Tree%=',
  },
  line = function(context)
    local line = '%=%f%='
    local modes = {
      ['n'] =  { 'NORMAL', '%#ModeNormal#' },
      ['no'] = { 'NORMAL', '%#ModeNormal#' },
      ['v'] =  { 'VISUAL', '%#ModeVisual#' },
      ['V'] =  { 'V-LINE', '%#ModeVisual#' },
      [''] = { 'V-BLOCK', '%#ModeVisual#' },
      ['s'] =  { 'SELECT', '%#ModeSelect#' },
      ['S'] =  { 'S-LINE', '%#ModeSelect#' },
      [''] = { 'S-BLOCK', '%#ModeSelect#' },
      ['i'] =  { 'INSERT', '%#ModeInsert#' },
      ['ic'] = { 'INSERT', '%#ModeInsert#' },
      ['R'] =  { 'REPLACE', '%#ModeReplace#' },
      ['Rv'] = { 'V-REPLACE', '%#ModeReplace#' },
      ['c'] =  { 'COMMAND', '%#ModeOther#' },
      ['cv'] = { 'VIM EX', '%#ModeOther#' },
      ['ce'] = { 'EX', '%#ModeOther#' },
      ['r'] =  { 'PROMPT', '%#ModeOther#' },
      ['rm'] = { 'MORE', '%#ModeOther#' },
      ['r?'] = { 'CONFIRM', '%#ModeOther#' },
      ['!'] =  { 'SHELL', '%#ModeOther#' },
      ['t'] =  { 'TERMINAL', '%#ModeOther#' },
    }

    local mode = function()
      local current_mode = vim.api.nvim_get_mode().mode

      return string.format('%s %s ', modes[current_mode][2], modes[current_mode][1])
    end

    if context.active then
      line = mode() .. '%#StatusLine#  %t  %R %= %l:%c  %p%%  ' .. vim.bo.filetype .. ' '
    end

    return line
  end
}
