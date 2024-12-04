local telescope = require 'telescope.builtin'

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '[P]roject [V]iew' })

vim.keymap.set('n', '<leader>pf', function()
  telescope.find_files {
    cwd = vim.fn.getcwd(),
    hidden = true,
  }
end, { desc = '[P]roject [F]iles' })

vim.keymap.set('n', '<leader>gf', function()
  telescope.git_files {
    show_untracked = true,
  }
end, { desc = '[G]it [F]iles' })
