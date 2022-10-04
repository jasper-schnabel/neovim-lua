-- autocommands
local group, a = vim.api.nvim_create_augroup('Options', { clear = true }), vim.api

a.nvim_create_autocmd('FileType', {
  pattern = { 'markdown', 'text' },
  command = 'setlocal spell | setlocal wrap',
  group = group,
})

a.nvim_create_autocmd('FileType', {
  pattern = 'drex',
  command = 'setlocal nobuflisted',
  group = group,
})

a.nvim_create_autocmd('FileType', {
  pattern = { 'help', 'lspinfo', 'qf' },
  command = 'nnoremap <buffer><silent> q :q<CR>',
  group = group,
})

a.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({ higroup = 'Search' })
  end,
  group = group,
})


a.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local map, opts = vim.keymap.set, { silent = true, buffer = args.buf }

    map('n', 'gd', function() vim.lsp.buf.definition() end, opts)
    map('n', 'gr', function() vim.lsp.buf.references() end, opts)
    map('n', 'gy', function() vim.lsp.buf.implementation() end, opts)
    map('n', 'gb', function() vim.lsp.buf.type_definition() end, opts)
    map('n', 'K', function() vim.lsp.buf.hover() end, opts)
    map('n', '<C-w>', function() vim.lsp.buf.signature_help() end, opts)
    map('n', '<leader>lr', function() vim.lsp.buf.rename() end, opts)
    map('n', '<leader>la', function() vim.lsp.buf.code_action() end, opts)
    map('n', '<leader>lf', function() vim.lsp.buf.format { async = true } end, opts)
    map('n', '<C-n>', function() vim.diagnostic.goto_next() end, opts)
    map('n', '<C-p>', function() vim.diagnostic.goto_prev() end, opts)
    map('n', '<leader>wa', function() vim.lsp.buf.add_workspace_folder() end, opts)
    map('n', '<leader>wr', function() vim.lsp.buf.remove_workspace_folder() end, opts)
    map('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, opts)
    map('n', '<leader>li', ':LspInfo<CR>', opts)
    map('n', '<leader>ls', ':LspStop<CR>', opts)

    a.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
      callback = function() vim.lsp.buf.document_highlight() end,
      buffer = args.buf,
      group = group,
    })

    a.nvim_create_autocmd('CursorMoved', {
      callback = function() vim.lsp.buf.clear_references() end,
      buffer = args.buf,
      group = group,
    })
  end,
  group = group,
})
