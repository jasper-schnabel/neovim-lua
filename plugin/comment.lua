-- comment
require('Comment').setup {
  padding = true,
  sticky = true,
  ignore = '^$',
  toggler = {
    line = 'gcc',
    block = 'gbc',
  },
  opleader = {
    line = 'gc',
    block = 'gb',
  },
  mappings = {
    basic = true,
    extra = true,
    extended = true,
  },
  pre_hook = nil,
  post_hook = nil,
}
