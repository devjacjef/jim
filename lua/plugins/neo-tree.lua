return {
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
}
