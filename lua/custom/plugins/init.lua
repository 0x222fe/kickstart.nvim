-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
require 'custom.plugins.fugitive'
require 'custom.plugins.ufo'
require 'custom.plugins.commentnvim'
require 'custom.plugins.undotree'

return {
  { 'ThePrimeagen/vim-be-good' },
  { 'nvim-treesitter/nvim-treesitter-context' },
  { 'ThePrimeagen/harpoon', branch = 'harpoon2', dependencies = { 'nvim-lua/plenary.nvim', 'telescope.nvim' } },
  { 'fatih/vim-go' },
  { 'github/copilot.vim' },
  { 'wakatime/vim-wakatime', lazy = false },
}
