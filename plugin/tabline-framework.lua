-- tabline-framework
require('tabline_framework').setup {
  render = function(f)
    if require('drex.drawer').get_drawer_window() then
      f.add { string.rep(' ', 35) .. '┃', fg ='#444444' }
    end
    f.make_bufs(function(info)
      f.add('  ' .. info.index .. ' ')
      f.add(info.filename or '[No Name]')
      f.add(info.modified and ' [+]')
      f.add('  ')
    end)
  end
}
