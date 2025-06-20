-- This will be for auto-brackets, auto-formatting, surrond, code structure
return {
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        cmd = { "CoformInfo" },
        keys = {
            {
                "<leader>F",
                function()
                    require("conform").format({
                        lsp_fallback = true,
                        async = true,
                    })
                end,
                mode = "",
                desc = "Format buffer",
            },
        },
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
            },
            default_format_opts = {
                lsp_format = "fallback",
            },
            format_on_save = true,
            formatters = {
                --
            },
        },
        init = function()
            vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
        end,
    },
    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        opts = {},
    },
    { -- temporary whilst I learn the keybinds
        "roobert/surround-ui.nvim",
        opts = {
            root_key = "S"
        }
    },
    {
        "hedyhli/outline.nvim",
        lazy = true,
        cmd = { "Outline", "OutlineOpen" },
        keys = { -- Example mapping to toggle outline
            { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
        },
        opts = {
            -- Your setup opts here
        },
    },
}
