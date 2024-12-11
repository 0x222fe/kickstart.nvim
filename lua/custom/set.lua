#vim.opt.guicursor = '' -- Disable GUI cursor for a consistent terminal appearance

vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.number = true -- Show absolute line number for the current line

vim.opt.tabstop = 4 -- Number of spaces for a tab
vim.opt.softtabstop = 4 -- Number of spaces for a tab in insert mode
vim.opt.shiftwidth = 4 -- Number of spaces for each indentation level
vim.opt.expandtab = true -- Convert tabs to spaces

vim.opt.smartindent = true -- Enable smart indentation based on syntax

vim.opt.wrap = false -- Disable line wrapping

vim.opt.hlsearch = false -- Disable search result highlighting
vim.opt.incsearch = true -- Enable incremental search

vim.opt.termguicolors = true -- Enable true color support in the terminal

vim.opt.scrolloff = 8 -- Keep 8 lines visible above and below the cursor
vim.opt.signcolumn = 'yes' -- Always show the sign column to prevent text shifting

vim.opt.updatetime = 50 -- Reduce time for triggering swap writes and CursorHold

vim.opt.colorcolumn = '80' -- Highlight the 80th column to maintain line length limits


vim.cmd [[highlight LineNr term=bold cterm=bold ctermfg=Yellow guifg=Yellow]]
vim.cmd [[highlight CursorLineNr term=bold cterm=bold ctermfg=Yellow guifg=Yellow]]
