return {
    { "akinsho/bufferline.nvim", enabled = false },
    {
        "saghen/blink.cmp",
        opts = {
            keymap = {
                preset = "default",
                ["<c-y>"] = {},
                ["<c-g>"] = { "cancel" },
                ["<Tab>"] = { "select_and_accept" }
            },
        },
    },
    {
        "folke/noice.nvim",
        keys = {
            { "<c-f>", mode = { "i" }, false },
            { "<c-b>", mode = { "i" }, false },
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = function()
            local keys = require("lazyvim.plugins.lsp.keymaps").get()
            keys[#keys + 1] = { "<c-k>", false, mode = { "i" } }
        end,
    },
}
