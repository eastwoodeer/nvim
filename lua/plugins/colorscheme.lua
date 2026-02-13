return {
    {
        "EdenEast/nightfox.nvim",
        priority = 1000,
        config = function()
            require("nightfox").setup({
                options = {
                    styles = {
                        comments = "italic",
                        keywords = "bold"
                    }
                }
            })

            local function setup_colorscheme_by_time()
                local hour = tonumber(os.date("%H"))
                local target_theme

                if hour >= 8 and hour <= 17 then
                    target_theme = "dayfox"
                else
                    target_theme = "duskfox"
                end

                vim.cmd.colorscheme(target_theme)
                vim.notify(string.format("colorscheme: %s", target_theme),
                    vim.log.levels.INFO)
            end

            setup_colorscheme_by_time()

            -- automatically check and modify color scheme every half hours
            vim.fn.timer_start(0.5*60*60*1000, setup_colorscheme_by_time, {["repeat"] = -1})
        end

    },
    -- {
    --     "catppuccin/nvim",
    --     name = "catppuccin",
    --     lazy = true,
    --     opts = {
    --         flavour = "latte"
    --     }
    -- },
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = true,
    --     opts = {
    --         style = "storm",
    --     },
    -- },
    -- {
    --     "LazyVim/LazyVim",
    --     opts = {
    --         colorscheme = "dayfox",  -- latte/mocha
    --     }
    -- },
    -- {
    --     "phha/zenburn.nvim",
    --     config = function()
    --         require("zenburn").setup()
    --     end
    -- },
    -- {
    --     "nvim-lualine/lualine.nvim",
    --     config = function()
    --         require("lualine").setup {
    --             options = {
    --                 theme = "zenburn",
    --             }
    --         }
    --     end
    -- },
}
