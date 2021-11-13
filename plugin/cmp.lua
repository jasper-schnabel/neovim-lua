-- cmp
require('cmp').setup {
  mapping = {
    ['<C-n>'] = require('cmp').mapping.select_next_item(),
    ['<C-p>'] = require('cmp').mapping.select_prev_item(),
    ['<C-d>'] = require('cmp').mapping.scroll_docs(-4),
    ['<C-f>'] = require('cmp').mapping.scroll_docs(4),
    ['<C-Space>'] = require('cmp').mapping.complete(),
    ['<C-e>'] = require('cmp').mapping.close(),
    ['<C-y>'] = require('cmp').mapping.confirm({ select = true })
  },
  sources = {
    { name = 'buffer' },
    { name = 'omni' },
  },
  snippet = {
    expand = function()
      error('Snippet engine is not configured.')
    end
  },
  formatting = {
    fields = { 'abbr', 'kind', 'menu' },
    -- format = {}
  },
  documentation = {
    border = 'rounded',
    maxwidth = 60, -- needs testing
    maxheight = 40, -- needs testing
  },
  experimental = {
    native_menu = false,
    ghost_text = true, -- let's play with this for a day or two
  },
}
