-- Thi will be for git intergration.
return {
	{
		"NeogitOrg/neogit",
		event = "VeryLazy",
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration
		},
	},
	{ "lewis6991/gitsigns.nvim" },
}
