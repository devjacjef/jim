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
        keys = {
            { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
        },
        opts = {
            -- Your setup opts here
        },
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            icons_enabled = true,
            theme = 'gruvbox',
            component_separators = {
                left = '',
                right = '',
            },
            section_separators = {
                left = '',
                right = '',
            },
            draw_empty = true,
            disabled_filetypes = {
                statusline = {},
                winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            always_show_tabline = true,
            globalstatus = false,
            refresh = {
                statusline = 1000,
                tabline = 1000,
                winbar = 1000,
                refresh_time = 16, -- ~60fps
                events = {
                    'WinEnter',
                    'BufEnter',
                    'BufWritePost',
                    'SessionLoadPost',
                    'FileChangedShellPost',
                    'VimResized',
                    'Filetype',
                    'CursorMoved',
                    'CursorMovedI',
                    'ModeChanged',
                },
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'diff', 'diagnostics' },
                lualine_c = { 'filename' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = { 'progress' },
                lualine_z = { 'location' }
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { 'filename' },
                lualine_x = { 'location' },
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {}
        }
    },
}
