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
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

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
