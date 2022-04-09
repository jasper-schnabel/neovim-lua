-- autopairs
require('nvim-autopairs').setup {
  check_ts = true,
  fast_wrap = {
    map = '<C-w>',
    offset = 0,
    end_key = 'w',
  },
}
