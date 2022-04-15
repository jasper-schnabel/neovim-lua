-- treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  ignore_install = false,
  highlight = { enable = true },
  indent = { enable = true },
}
