-- lsp.lua

require('mason').setup()
require('mason-lspconfig').setup {
  ensure_installed = { "pyright", "lua_ls", "ts_ls" },
  automatic_installation = true,
}

