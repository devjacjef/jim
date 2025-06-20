-- Save Buffer
vim.keymap.set("n", "<C-s>", ":w<CR>", { noremap = true, silent = true, desc = "Save current buffer." })
vim.keymap.set("i", "<C-s>", ":w<CR>", { noremap = true, silent = true, desc = "Save current buffer." })

-- Save and Quit Buffer
vim.keymap.set("n", "<C-S>", ":wq<CR>", { noremap = true, silent = true, desc = "Save and Quit current buffer." })
vim.keymap.set("i", "<C-S>", ":wq<CR>", { noremap = true, silent = true, desc = "Save and Quit current buffer." })

-- Save and Quit all Buffers
vim.keymap.set("n", "<C-M-s>", ":wqa<cr>", { noremap = true, silent = true, desc = "save and quit all buffers." })
vim.keymap.set("i", "<C-M-s>", ":wqa<cr>", { noremap = true, silent = true, desc = "save and quit all buffers." })

-- Quit buffer
vim.keymap.set("n", "<C-q>", ":q!<cr>", { noremap = true, silent = true, desc = "Quit the buffer." })

-- Select entire page
vim.keymap.set("n", "<leader>=", "ggVG", { noremap = true, silent = true, desc = "Select entire buffer." })

-- Escape in the terminal
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
