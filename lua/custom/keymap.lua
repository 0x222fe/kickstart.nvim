local telescope = require 'telescope.builtin'

vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = '[C]ode [D]iagnostic' })

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = '[P]roject [V]iew' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

vim.keymap.set('n', '<leader>pf', function()
  telescope.find_files {
    cwd = vim.fn.getcwd(),
    hidden = true,
    no_ignore = true,
    file_ignore_patterns = { '%.o$', '%.so$', '%.bin$', '%.exe$', '%.class$', '%.dll$', '%.dat$', '%.pyc$', '%.pdb$' },
  }
end, { desc = '[P]roject [F]iles' })

pcall(require('telescope').load_extension, 'git')

vim.keymap.set('n', '<C-p>', function()
  telescope.git_files {
    show_untracked = true,
  }
end)

-- vim.keymap.set('n', '<leader>gf', function()
--   telescope.git_files {
--     show_untracked = true,
--   }
-- end, { desc = '[G]it [F]iles' })

vim.keymap.set('n', '<leader>ps', function()
  telescope.live_grep()
end, { desc = '[P]roject [S]earch' })

vim.keymap.set('n', '<leader>vh', telescope.help_tags, { desc = '[V]view [H]elp' })

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
