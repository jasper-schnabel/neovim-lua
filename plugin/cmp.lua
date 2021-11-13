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
    -- I have to decide which sources to use
  },
  snippet = {
    expand = function()
      error('Snippet engine is not configured.')
    end
  },
  formatting = {
    -- needs to be setup once lspconfig is setup
  },
  documentation = {
    border = 'rounded',
    maxwidth = 60,
    maxheight = 20,
  },
  experimental = {
    native_menu = false,
    ghost_text = true, -- let's play with this for a day or two
  },
}
