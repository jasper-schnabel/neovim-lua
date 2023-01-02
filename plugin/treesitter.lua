-- treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  auto_install = true,
  ignore_install = false,
  highlight = { enable = true },
  indent = { enable = true },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<C-space>',
      node_incremental = '<C-space>',
      scope_incremental = '<C-s>',
      node_decremental = '<C-backspace>',
     },
   },
}
