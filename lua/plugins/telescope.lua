return {
    {
        "nvim-telescope/telescope.nvim",
        event = "VeryLazy",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
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
                "<leader>fg",
                "<cmd>Telescope live_grep <CR>",
                desc = "Grep",
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
    {
        "nvim-telescope/telescope-file-browser.nvim",
        keys = {
            {
                "<leader>fb",
                "<cmd>Telescope file_browser<CR>",
                desc = "File Browser"
            }
        },
    }
}
