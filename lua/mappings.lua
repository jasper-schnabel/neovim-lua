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
map('n', '<S-l>', ':bnext<CR>')
map('n', '<S-h>', ':bprevious<CR>')

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

-- custom placeholders
map('i', ',,', '<Esc>/<++><CR>c4l')
map('n', '<leader>,', '<Esc>/<++><CR>c4l')

-- paq
map('n', '<leader>ps', ':PaqSync<CR>')
map('n', '<leader>pl', ':PaqList<CR>')

-- minsnip
map('i', '<C-j>', ':lua require("minsnip").jump()<CR>')
map('i', '<C-k>', ':lua require("minsnip").jump_backwards()<CR>')

-- zen-mode
map('n', '<leader>z', ':ZenMode<CR>')

-- drex
map('n', '<leader>e', ':lua require("utils").drex_toggle()<CR>')

-- telescope
map('n', '<leader>f', ':Telescope find_files<CR>')
map('n', '<leader>fg', ':Telescope git_files<CR>')
map('n', '<leader>fl', ':Telescope live_grep<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fr', ':Telescope oldfiles<CR>')
map('n', '<leader>ft', ':Telescope<CR>')
