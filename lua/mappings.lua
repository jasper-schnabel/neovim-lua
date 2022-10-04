-- mappings
local map = function(m, k, f, o)
  local so = { silent = true }
  if o == nil then o = so end
  return vim.keymap.set(m, k, f, o)
end

-- better window navigation
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- better window resizing
map('n', '<A-C-h>', function() require('utils').resize(true, -3) end)
map('n', '<A-C-j>', function() require('utils').resize(false, 3) end)
map('n', '<A-C-k>', function() require('utils').resize(false, -3) end)
map('n', '<A-C-l>', function() require('utils').resize(true, 3) end)

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

-- debugprint
map('n', '<leader>dp', function() require('debugprint').deleteprints() end)

-- paq
map('n', '<leader>ps', ':PaqSync<CR>')
map('n', '<leader>pl', ':PaqList<CR>')

-- zen-mode
map('n', '<leader>z', function() require('zen-mode').toggle() end)

-- drex
map('n', '<leader>e', function() require('utils').drex_toggle() end)

-- telescope
map('n', '<leader>f',  function() require('telescope.builtin').find_files() end)
map('n', '<leader>fg', function() require('telescope.builtin').git_files() end)
map('n', '<leader>fl', function() require('telescope.builtin').live_grep() end)
map('n', '<leader>fb', function() require('telescope.builtin').buffers() end)
map('n', '<leader>fo', function() require('telescope.builtin').oldfiles() end)
map('n', '<leader>fh', function() require('telescope.builtin').help_tags() end)
map('n', '<leader>ft', ':Telescope<CR>')
