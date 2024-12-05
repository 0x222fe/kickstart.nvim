require 'custom.set'
require 'custom.keymap'
require 'custom.lsp'

vim.api.nvim_create_augroup('netrw_settings', { clear = true })
vim.api.nvim_create_autocmd('FileType', {

  group = 'netrw_settings',
  pattern = 'netrw',
  callback = function()
    vim.wo.relativenumber = true
  end,
})

-- vim.api.nvim_create_augroup('change_cwd', { clear = true })
-- vim.api.nvim_create_autocmd('BufEnter', {
--   group = 'change_cwd',
--   pattern = '*',
--   callback = function()
--     vim.cmd('lcd ' .. vim.fn.expand '%:p:h')
--   end,
-- })
