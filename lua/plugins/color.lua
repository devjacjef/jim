-- These plugins are for adding colorschemes and setting default colorscheme.
return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        opts = {
            -- ...
        },
        config = function(_, opts)
            vim.cmd("colorscheme gruvbox")
        end,
    },
}
