vim.g.mapleader = " "

local keymap = vim.keymap

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- emacs keybinds for insert mode
keymap.set("i", "<c-f>", "<Right>", { desc = "Move Right" })
keymap.set("i", "<c-b>", "<Left>", { desc = "Move Left" })
keymap.set("i", "<c-p>", "<Up>", { desc = "Move Up" })
keymap.set("i", "<c-n>", "<Down>", { desc = "Move Down" })
keymap.set("i", "<c-a>", "<Home>", { desc = "Move to begining of line" })
keymap.set("i", "<c-e>", "<End>", { desc = "Move to end of line" })
keymap.set("i", "<c-d>", "<Del>", { desc = "Delete current character" })
keymap.set("i", "<c-k>", "<cmd>norm d$<cr><right>", { desc = "Delete to the end" })
keymap.set("i", "<c-y>", "<c-r>+", { desc = "yank kill text" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search hightlights" })

-- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

if vim.g.neovide then
    keymap.set("n", "<D-s>", ":w<CR>") -- Save
    keymap.set("v", "<D-c>", '"+y') -- Copy
    keymap.set("n", "<D-v>", '"+P') -- Paste normal mode
    keymap.set("v", "<D-v>", '"+P') -- Paste visual mode
    keymap.set("c", "<D-v>", "<C-R>+") -- Paste command mode
    keymap.set("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
end

-- Allow clipboard copy paste in neovim
vim.api.nvim_set_keymap("", "<D-v>", "+p<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("!", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("t", "<D-v>", "<C-R>+", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<D-v>", "<C-R>+", { noremap = true, silent = true })

-- Smart Home: 第一次按 0 去 ^（第一个非空白），已经在那里时去真正的 0
vim.keymap.set({ "n", "x" }, "0", function()
    -- 获取当前列
    local col = vim.fn.col(".")
    -- 先执行 ^ 的行为
    vim.cmd("normal! ^")
    -- 如果列没变，说明已经在第一个非空白位置了，再去绝对行首
    if vim.fn.col(".") == col then
        vim.cmd("normal! 0")
    end
end, { desc = "Smart home: ^ then 0", expr = false })
