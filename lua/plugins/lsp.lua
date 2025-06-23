return {
    {
        "mason-org/mason.nvim",
        event = "VeryLazy",
        opts = {},
    },
    {
        "mason-org/mason-lspconfig.nvim",
        event = "VeryLazy",
        opts = {
            ensure_installed = {
                "lua_ls",
                "intelephense",
            },
            automatic_enable = true,
        },
    },
}
