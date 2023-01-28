vim.g.mapleader = " "

local map = function(mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, { noremap = true, silent = true })
end

vim.keymap.set("n", "<Leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<Leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<Leader>l", vim.diagnostic.setloclist)
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

map("n", "<Leader>q", ":q!<CR>")
map("n", "<Leader>Q", ":q!<CR>")
map("n", "<Leader>\\", ":nohl<CR>")
map("n", "<Leader>wq", ":wq<CR>")
map("n", "<Leader>w", ":w<CR>")
map("n", "<Leader>W", ":w<CR>")
map("n", "<Leader>Q", ":q!<CR>")
map("n", "<Leader>i", "gg=G<CR>")
map("n", "bp", ":bprev<CR>")
map("n", "bn", ":bnext<CR>")
map("n", "bd", ":bd<CR>")
map("n", "<Leader>f", ":Format<CR>")
map("n", "<Leader><Up>", ":resize +2<CR>")
map("n", "<Leader><Down>", ":resize -2<CR>")
map("n", "<Leader><Left>", ":vertical resize +2<CR>")
map("n", "<Leader><Right>", ":vertical resize -2<CR>")
