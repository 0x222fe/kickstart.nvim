local telescope = require 'telescope.builtin'

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '[P]roject [V]iew' })

vim.keymap.set('n', '<leader>pf', function()
  telescope.find_files {
    cwd = vim.fn.getcwd(),
    hidden = true,
  }
end, { desc = '[P]roject [F]iles' })

pcall(require('telescope').load_extension, 'git')

vim.keymap.set('n', '<leader>gf', function()
  telescope.git_files {
    show_untracked = true,
  }
end, { desc = '[G]it [F]iles' })

vim.keymap.set('n', '<leader>gb', function()
  telescope.git_branches()
end, { desc = '[G]it [B]ranches' })

vim.keymap.set('n', '<leader>gc', function()
  telescope.git_commits()
end, { desc = '[G]it [C]ommits' })

vim.keymap.set('n', '<leader>gs', function()
  telescope.git_status()
end, { desc = '[G]it [S]tatus' })

vim.keymap.set('n', '<leader>gl', function()
  telescope.git_bcommits()
end, { desc = '[G]it [L]og' })

local actions = require 'telescope.actions'

require('telescope').setup {
  defaults = {
    layout_config = {
      width = 0.9,
      preview_width = 0.7,
      horizontal = {
        preview_width = 0.7,
      },
    },
    mappings = {
      i = {
        ['<C-j>'] = actions.preview_scrolling_down,
        ['<C-k>'] = actions.preview_scrolling_up,
      },
    },
  },
}
