return {
    { "akinsho/bufferline.nvim", enabled = false },
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
