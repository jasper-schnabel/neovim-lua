-- drex
require('drex.config').configure {
  drawer = {
    default_width = 35,
  },
  hijack_netrw = true,
  disable_default_keybindings = true,
  keybindings = {
    ['n'] = {
      ['v'] = 'V',
      ['l'] = ':lua require("drex.elements").expand_element()<CR>',
      ['<CR>'] = ':lua require("drex.elements").expand_element()<CR>',
      ['h'] = ':lua require("drex.elements").collapse_directory()<CR>',
      ['<C-v>'] = ':lua require("drex.elements").open_file("vs")<CR>',
      ['<C-x>'] = ':lua require("drex.elements").open_file("sp")<CR>',
      ['L'] = ':lua require("drex.elements").open_directory()<CR>',
      ['H'] = ':lua require("drex.elements").open_parent_directory()<CR>',
      ['<C-r>'] = ':lua require("drex").reload_directory()<CR>',
      ['s'] = ':lua require("drex.actions.stats").stats()<CR>',
      ['a'] = ':lua require("drex.actions.files").create()<CR>',
      ['d'] = ':lua require("drex.actions.files").delete("line")<CR>',
      ['D'] = ':lua require("drex.actions.files").delete("clipboard")<CR>',
      ['p'] = ':lua require("drex.actions.files").copy_and_paste()<CR>',
      ['P'] = ':lua require("drex.actions.files").cut_and_move()<CR>',
      ['r'] = ':lua require("drex.actions.files").rename()<CR>',
      ['R'] = ':lua require("drex.actions.files").multi_rename("clipboard")<CR>',
      ['m'] = ':lua require("drex.actions.clipboard").toggle()<CR>',
      ['cc'] = ':lua require("drex.actions.clipboard").clear_clipboard()<CR>',
      ['cs'] = ':lua require("drex.actions.clipboard").open_clipboard_window()<CR>',
      ['y'] = ':lua require("drex.actions.text").copy_element_name()<CR>',
      ['Y'] = ':lua require("drex.actions.text").copy_element_absolute_path()<CR>',
    },
    ['v'] = {
      ['d'] = ':lua require("drex.actions.files").delete("visual")<CR>',
      ['m'] = ':DrexToggle<CR>',
      ['y'] = ':lua require("drex.actions.text").copy_element_name(true)<CR>',
      ['Y'] = ':lua require("drex.actions.text").copy_element_absolute_path(true)<CR>',
    }
  },
  on_enter = function()
    vim.opt.relativenumber = false
    vim.opt.number = false
  end,
}
