return {
    {
        "akinsho/toggleterm.nvim",
        config = true,
        cmd = "ToggleTerm",
        keys = {
            { "<leader>tt", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" },
            { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Toggle vertical terminal" },
        },
        opts = {
            open_mapping = [[<F6>]],
            direction = "float",
            size = function(term)
                if term.direction == "horizontal" then
                    return 15
                elseif term.direction == "vertical" then
                    return math.floor(vim.o.columns / 2)
                end
            end,
            shade_filetypes = {},
            hide_numbers = true,
            insert_mappings = true,
            terminal_mappings = true,
            start_in_insert = true,
            close_on_exit = true,
        },
    },
}
