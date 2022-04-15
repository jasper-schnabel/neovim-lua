-- telescope
require('telescope').setup {
  defaults = {
    prompt_prefix = ' > ',
    mappings = {
      i = {
        ['<C-j>'] = 'move_selection_next',
        ['<C-k>'] = 'move_selection_previous',
        ['<C-h>'] = 'which_key',
      },
    },
  },
  pickers = {
    lsp_code_actions = {
      theme = 'cursor',
    },
  },
}
