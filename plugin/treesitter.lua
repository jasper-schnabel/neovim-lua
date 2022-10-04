-- treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = 'all',
  auto_install = true,
  ignore_install = false,
  highlight = { enable = true },
  indent = { enable = true },
}
