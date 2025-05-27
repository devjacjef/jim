return {
	-- auto-pairs
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
	-- formatting
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		cmd = { "ConformInfo" },
		keys = {
			{
				"<leader>F",
				function()
					require("conform").format({
						lsp_fallback = true,
						async = false,
						timeout_ms = 500,
					})
				end,
				mode = "",
				desc = "Format buffer",
			},
		},
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettierd", "prettier", stop_after_first = true },
				php = { "php-cs-fixer" },
			},
			default_format_opts = {
				lsp_format = "fallback",
			},
			format_on_save = true,
			formatters = {
				shfmt = {
					prepend_args = { "-i", "2" },
				},
			},
		},
		init = function()
			-- If you want the formatexpr, here is the place to set it
			vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
		end,
	},
	-- {
	-- 	"mfussenegger/nvim-lint",
	-- 	events = { "BufWritePost", "BufReadPost", "InsertLeave" },
	-- 	config = function(_, opts)
	-- 		local lint = require("lint")
	-- 		lint.linters_by_ft = {
	-- 			php = { "phpcs" },
	-- 		}
	--
	-- 		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
	--
	-- 		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
	-- 			group = lint_augroup,
	-- 			callback = function()
	-- 				lint.try_lint()
	-- 			end,
	-- 		})
	-- 	end,
	-- },
	{
		{
			"nvim-treesitter/nvim-treesitter",
			build = ":TSUpdate",
			config = function()
				require("nvim-treesitter.configs").setup({
					ensure_installed = { "php", "html", "css", "javascript", "lua" },
					highlight = {
						enable = true,
						additional_vim_regex_highlighting = false,
					},
					indent = {
						enable = true,
					},
				})
			end,
		},
	},
}
