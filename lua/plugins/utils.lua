return {
	-- comment
	{
		"numToStr/Comment.nvim",
		opts = {
			padding = true,
			sticky = true,
			ignore = nil,
			toggler = { line = "gcc", block = "gbc" },
			opleader = { line = "gc", block = "gb" },
			extra = { above = "gcO", below = "gco", eol = "gcA" },
			mappings = { basic = true, extra = true },
			pre_hook = nil,
			post_hook = nil,
		},
	},
	-- neotree
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		lazy = false, -- neo-tree will lazily load itself

		opts = {
			-- fill any relevant options here
		},

		config = function()
			-- some keymaps
			vim.keymap.set("n", "<C-t>", "<Cmd>Neotree toggle<CR>")
		end,
	},
	-- telescope
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		keys = {
			{
				"<leader>ff",
				"<cmd>Telescope find_files <CR>",
				desc = "Find Files",
			},
			{
				"<leader>fa",
				"<cmd>Telescope find_files follow=true no_ignore=true hidden=true <CR>",
				desc = "Find All Files",
			},
			{
				"<leader>fb",
				"<cmd>Telescope file_browser <CR>",
				desc = "File Browser",
			},
			{
				"<leader>fg",
				"<cmd>Telescope live_grep <CR>",
				desc = "Grep",
			},
			{
				"<leader>fb",
				"<cmd>Telescope buffers <CR>",
				desc = "Buffers",
			},
			{
				"<leader>fh",
				"<cmd>Telescope help_tags <CR>",
				desc = "Help Tags",
			},
			{
				"<leader>fo",
				"<cmd>Telescope oldfiles <CR>",
				desc = "Old files",
			},
			{
				"<leader>fc",
				"<cmd>Telescope colorscheme <CR>",
				desc = "Color Scheme",
			},
		},
	},
	-- which-key
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {
			-- default settings
		},
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
}
