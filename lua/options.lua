-- options
local o, a, g = vim.opt, vim.api, vim.g
local group, indent = a.nvim_create_augroup('Options', { clear = true }), 2

o.fileencoding = 'utf-8'
o.spelllang = 'en,de'
o.clipboard = 'unnamedplus'
o.termguicolors = true
g.mapleader = ' ' -- leader key
o.mouse = 'a'
o.scrolloff = 4
o.sidescrolloff = 4

o.number = true
o.relativenumber = true

o.cursorline = true
o.signcolumn = 'yes'
o.laststatus = 3
o.showmode = false
o.showtabline = 2

o.pumheight = 10
o.completeopt = { 'menu', 'menuone', 'noselect' } -- cmp uses that

o.splitbelow = true
o.splitright = true
o.fillchars = {
  horiz = '━',
  horizup = '┻',
  horizdown = '┳',
  vert = '┃',
  vertleft = '┫',
  vertright = '┣',
  verthoriz = '╋',
}

o.tabstop = indent -- number of spaces a tab consists of
o.shiftwidth = indent -- number of spaces to insert when indenting with >, <
o.softtabstop = indent -- number of spaces to remove when pressing backspace
o.expandtab = true -- convert tabs to spaces
o.shiftround = true -- round tabs to multiples of tabstop/shiftwidth
o.smartindent = true

o.ignorecase = true
o.smartcase = true

o.wrap = false
o.linebreak = true

o.timeoutlen = 300
o.updatetime = 300

o.confirm = true
o.undofile = true
o.swapfile = false
