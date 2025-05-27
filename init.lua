require("config.lazy")

require("mason").setup()
require("mason-lspconfig").setup()

vim.lsp.enable({ "lua-ls", "emmet-ls", "intelephense" })
