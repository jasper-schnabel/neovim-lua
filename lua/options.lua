-- options
local o, g, indent = vim.opt, vim.g, 2

o.fileencoding = 'utf-8'
o.spelllang = 'en,de'
o.clipboard = 'unnamedplus'
g.mapleader = ' ' -- leader key

o.mouse = 'a'
o.scrolloff = 4
o.sidescrolloff = 4

o.termguicolors = true -- enable 24-bit RBG color
o.number = true
o.relativenumber = true
o.cursorline = true
o.signcolumn = 'yes'
o.fillchars = { vert = ' ' }
o.splitbelow = true
o.splitright = true
o.wrap = false
o.linebreak = true
o.pumheight = 10
o.completeopt = { 'menu', 'menuone', 'noselect' } -- cmp uses that

o.undofile = true
o.swapfile = false
o.confirm = true -- confirm to save changes in modified buffers
o.showmode = false
o.shortmess:append('c') -- avoid showing messages when using completion

o.hlsearch = true
o.ignorecase = true
o.smartcase = true

o.tabstop = indent -- number of spaces a tab consists of
o.shiftwidth = indent -- number of spaces to insert when indenting with >, <
o.softtabstop = indent -- number of spaces to remove when pressing backspace
o.expandtab = true -- convert tabs to spaces
o.shiftround = true -- round tabs to multiples of tabstop/shiftwidth
o.smartindent = true

o.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
o.updatetime = 300 -- faster completion

vim.api.nvim_command('autocmd FileType markdown setlocal spell | setlocal wrap')
vim.api.nvim_command('autocmd FileType help,lspinfo,qf nnoremap <buffer><silent> q :q<CR>')
vim.api.nvim_command('autocmd TextYankPost * lua vim.highlight.on_yank({ higroup = "Search", on_visual = false })')
vim.api.nvim_command('autocmd FileType drex setlocal nobuflisted')
