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
        opts = {
            server = {
                ['*'] = {
                    keys = {
                        { "<c-k>", false, mode = "i" },
                    }
                },
            },
        }
    },
    {
        "folke/persistence.nvim",
        enabled = false,
    }
}
