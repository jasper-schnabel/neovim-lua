-- cmp
require('cmp').event:on('confirm_done', require('nvim-autopairs.completion.cmp').on_confirm_done())
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
    { name = 'buffer', keyword_length = 3 },
    { name = 'path' },
    { name = 'nvim_lua' },
    { name = 'nvim_lsp' },
    { name = 'snippy' },
  },
  snippet = {
    expand = function(args)
      require('snippy').expand_snippet(args.body)
    end
  },
  formatting = {
    -- needs to be setup once lspconfig is setup
    -- the documentation option needs to be setup once it's merged to view
  },
  experimental = {
    ghost_text = true, -- this is pretty cool
  },
}
