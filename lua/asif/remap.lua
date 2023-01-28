vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<C-p>", vim.cmd.Ex, { desc = "File Explorer"})
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Diagnostic Previous"})
map("n", "]d", vim.diagnostic.goto_next, { desc = "Diagnostic Next"})
map("n", "<Leader>e", vim.diagnostic.open_float, { desc = "Diagnostic Open Float"})
map("n", "<Leader>l", vim.diagnostic.setloclist, { desc = "Diagnostic Open List"})
-- map({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
map("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
map("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

map("n", "<Leader>q", ":q!<CR>", { desc = "[Q]uit Without Saving"})
map("n", "<Leader>Q", ":q!<CR>", { desc = "[Q]uit Without Saving"})
map("n", "<Leader>\\", ":nohl<CR>", { desc = "Toggle Highlight"})
map("n", "<Leader>wq", ":wq<CR>", { desc = "Save & Quit"})
map("n", "<Leader>w", ":w<CR>", { desc = "Save"})
map("n", "<Leader>W", ":w<CR>", { desc = "Save"})
map("n", "<Leader>i", "gg=G<CR>", { desc = "Indent File"})
map("n", "bp", ":bprev<CR>", { desc = "[B]uffer [P]revious"})
map("n", "bn", ":bnext<CR>", { desc = "[B]uffer [N]ext"})
map("n", "bd", ":bd<CR>", { desc = "[B]uffer [D]elete"})
map("n", "<Leader>fo", ":Format<CR>", { desc = "[F]ormat File"})
map("n", "<Leader><Up>", ":resize +2<CR>", { desc = "Horizontal Resize +"})
map("n", "<Leader><Down>", ":resize -2<CR>", { desc = "Horizontal Resize -"})
map("n", "<Leader><Left>", ":vertical resize +2<CR>", { desc = "Vertical Resize +"})
map("n", "<Leader><Right>", ":vertical resize -2<CR>", { desc = "Vertical Resize -"})
