-- drex
require('drex.config').configure {
  drawer = {
    default_width = 35,
    window_picker = { enabled = false },
  },
  disable_default_keybindings = true,
  keybindings = {
    ['n'] = {
      ['v'] = 'V',
      ['l'] = ':lua require("drex").expand_element()<CR>',
      ['h'] = ':lua require("drex").collapse_directory()<CR>',
      ['<C-v>'] = ':lua require("drex").open_file("vs")<CR>',
      ['<C-x>'] = ':lua require("drex").open_file("sp")<CR>',
      ['L'] = ':lua require("drex").open_directory()<CR>',
      ['H'] = ':lua require("drex").open_parent_directory()<CR>',
      ['<C-r>'] = ':lua require("drex").reload_directory()<CR>',
      ['s'] = ':lua require("drex.actions").stats()<CR>',
      ['a'] = ':lua require("drex.actions").create()<CR>',
      ['d'] = ':lua require("drex.actions").delete("line")<CR>',
      ['D'] = ':lua require("drex.actions").delete("clipboard")<CR>',
      ['p'] = ':lua require("drex.actions").copy_and_paste()<CR>',
      ['P'] = ':lua require("drex.actions").cut_and_move()<CR>',
      ['r'] = ':lua require("drex.actions").rename()<CR>',
      ['m'] = ':DrexToggle<CR>',
      ['cc'] = ':lua require("drex.actions").clear_clipboard()<CR>',
      ['cs'] = ':lua require("drex.actions").print_clipboard()<CR>',
      ['y'] = ':lua require("drex.actions").copy_element_name()<CR>',
      ['Y'] = ':lua require("drex.actions").copy_element_absolute_path()<CR>',
    },
    ['v'] = {
      ['d'] = ':lua require("drex.actions").delete("visual")<CR>',
      ['m'] = ':DrexToggle<CR>',
      ['y'] = ':lua require("drex.actions").copy_element_name(true)<CR>',
      ['Y'] = ':lua require("drex.actions").copy_element_absolute_path(true)<CR>',
    }
  },
  on_enter = function()
    vim.wo.relativenumber = false
    vim.wo.number = false
  end,
}
