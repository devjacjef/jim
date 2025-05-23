require("config.lazy")

require("mason").setup()
require("mason-lspconfig").setup()

vim.lsp.enable({ "lua_ls", 
	"intelephense",
	"dockerls",
	"rust-analyzer"
})
