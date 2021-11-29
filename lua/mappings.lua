-- mappings
local map = require('utils').map

-- better window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- better window resizing
map('n', '<C-Right>', ':lua require("utils").resize(true, 3)<CR>')
map('n', '<C-Left>', ':lua require("utils").resize(true, -3)<CR>')
map('n', '<C-Down>', ':lua require("utils").resize(false, 3)<CR>')
map('n', '<C-Up>', ':lua require("utils").resize(false, -3)<CR>')

-- better buffer switching
map('n', '<TAB>', ':bnext<CR>')
map('n', '<S-TAB>', ':bprevious<CR>')

-- better indenting
map('v', '>', '>gv')
map('v', '<', '<gv')

-- spell checking
map('n', '<leader>s', ':set spell!<CR>')
map('i', '<F11>', '<esc>:set spell!<CR>gi')

-- write file with ZW, like ZZ and ZQ
map('n', 'ZW', ':write<CR>')

-- move selected line/text
map('n', '<A-j>', ':m .+1<CR>==')
map('n', '<A-k>', ':m .-2<CR>==')
map('v', 'J', ':m \'>+1<CR>gv=gv')
map('v', 'K', ':m \'<-2<CR>gv=gv')

-- keep J centered
map('n', 'J', 'mzJ`z')

-- remove hlsearch
map('n', '<leader><Space>', ':nohlsearch<CR>')

-- toggle wrap
map('n', '<leader>w', ':set wrap!<CR>')

-- custom snippets
map('i', ',,', '<Esc>/<++><CR>c4l')
map('n', '<leader>,', '<Esc>/<++><CR>c4l')

-- paq
map('n', '<leader>ps', ':PaqSync<CR>')
map('n', '<leader>pl', ':PaqList<CR>')

-- zen-mode
map('n', '<leader>z', ':ZenMode<CR>')
