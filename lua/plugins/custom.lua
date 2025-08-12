return {
    {
        "snacks.nvim",
        opts = {
            scroll = { enabled = false },
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
                }
            }
        }
    },
    {
        "echasnovski/mini.files",
        opts = {
            windows = {
                preview = false,
                width_preview = 100
            }
        }
    }
}
