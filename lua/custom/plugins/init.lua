-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
require 'custom.plugins.fugitive'
return {
  { 'ThePrimeagen/vim-be-good' },
  { 'nvim-treesitter/nvim-treesitter-context' },
  { 'tpope/vim-fugitive' },
  { 'fatih/vim-go' },
  { 'github/copilot.vim' },
  { 'wakatime/vim-wakatime', lazy = false },
}
