return {
    {
        "snacks.nvim",
        opts = {
            scroll = { enabled = false },
            indent = {
                animate = {
                    enabled = false,
                },
            },
            styles = {
                lazygit = {
                    width = 0,
                    height = 0,
                },
            },
        },
    },
    {
        "folke/flash.nvim",
        opts = {
            modes = {
                char = {
                    jump_labels = true,
                },
            },
        },
    },
    {
        "nvim-mini/mini.files",
        opts = {
            windows = {
                preview = false,
                width_preview = 100,
            },
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup {
                options = {
                    theme = "zenburn",
                }
            }
        end
    },
}
