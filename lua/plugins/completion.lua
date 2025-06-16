-- This will be for auto-complete
return {
    "saghen/blink.cmp",
    opts = {
        keymap = { preset = "super-tab" },

        apperance = {
            nerd_font_variant = "mono",
        },

        completion = {
            documentation = { auto_show = false },
            menu = {
                draw = {
                    columns = {
                        { "label", "label_description", gap = 1 },
                        { "kind" }
                    }
                },
            },
            ghost_text = {
                enabled = true,
                show_with_selection = true,
                show_without_selection = false,
                show_with_menu = true,
                show_without_menu = true
            },
        },

        sources = {
            default = { "lsp", "buffer" },
        },

        opts_extend = { "sources.default" },
    }
}
