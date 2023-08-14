-- sfm
require('sfm').setup {
  view = {
    side = 'left',
    width = 35,
  },
  mappings = {
    custom_only = true,
    list = {
      { key = 'l', action = 'edit' },
      { key = 'h', action = 'close_entry' },
      { key = '<C-y>', action = 'vsplit' },
      { key = '<C-x>', action = 'split' },
      { key = 'gg', action = 'first_sibling' },
      { key = 'G', action = 'last_sibling' },
      { key = 'H', action = 'change_root_to_parent' },
      { key = 'L', action = 'change_root_to_entry' },
      { key = '<C-r>', action = 'reload' },
      { key = '<Space-e>', action = 'close' },
      { key = 'a', action = 'create' },
      { key = 'y', action = 'copy' },
      { key = 'Y', action = 'copy_selections' },
      { key = 'r', action = 'move' },
      { key = 'R', action = 'move_selections' },
      { key = 'dd', action = 'delete' },
      { key = 'DD', action = 'delete_selections' },
      { key = 'm', action = 'toggle_selection' },
      { key = '<C-m>', action = 'clear_selections' },
    }
  },
  renderer = { icons = { selection = ' ▶' } },
}
