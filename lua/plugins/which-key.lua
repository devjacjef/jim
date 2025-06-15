-- file just for which-key plugin

return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        --
    },
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = true })
            end,
            desc = "Keymaps"
        }
    }
}
