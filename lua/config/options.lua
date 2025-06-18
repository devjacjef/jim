local opt = vim.opt

opt.termguicolors = true

opt.number = true
opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

opt.splitright = true
opt.splitbelow = true

opt.wrap = false

vim.diagnostic.config({
	virtual_text = true, -- inline error text
	signs = true, -- show icons in sign column
	underline = true, -- underline errors/warnings
	update_in_insert = false, -- don't show while typing
	severity_sort = true,
})

vim.o.autoread = true

vim.o.backup = false
vim.o.writebackup = false
