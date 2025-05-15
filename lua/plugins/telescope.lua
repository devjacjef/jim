return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },

	config = function ()
		-- some keymaps
		vim.keymap.set("n", "<space>f", require('telescope.builtin').find_files)
	end,
}
