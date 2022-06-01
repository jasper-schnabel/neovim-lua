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
    fields = { 'kind', 'abbr', 'menu' },
    format = function(_, vim_item)
      vim_item.menu = vim_item.kind
      vim_item.kind = require('icons')[vim_item.kind]
      return vim_item
    end,
  },
  -- the documentation and window option need to be setup once they are merged into view
  experimental = {
    ghost_text = true, -- this is pretty cool
  },
}
