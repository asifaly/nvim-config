-- [[ options.lua ]]
local o = vim.opt
o.clipboard = "unnamedplus"
o.hlsearch = true
o.nu = true
o.mouse = "a"
o.breakindent = true
o.undofile = true
o.ignorecase = true
o.smartcase = true
o.rnu = true
o.updatetime = 250
o.signcolumn = "yes"
o.termguicolors = true
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- Set completeopt to have a better completion experience
o.completeopt = "menuone,noselect"
vim.g.python3_host_prog = "/usr/bin/python3"
vim.g.python2_host_prog = "/usr/bin/python2"
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
