-- snippy
require('snippy').setup {
  snippet_dirs = '~/.config/nvim/snippets',
  hl_group = 'Search',
  mappings = {
    is = {
      ['<C-j>'] = 'expand_or_advance',
      ['<C-k>'] = 'previous',
    },
  },
}
