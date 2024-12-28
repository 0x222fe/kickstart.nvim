local mason_lspconfig = require 'mason-lspconfig'

mason_lspconfig.setup {
  ensure_installed = { 'omnisharp' },
  automatic_installation = false,
}

require 'custom.lsp.ts&volar'
require 'custom.lsp.omnisharp'
