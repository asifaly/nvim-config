-- [[ options.lua ]]
vim.opt.clipboard = "unnamedplus"
vim.opt.hlsearch = true
vim.opt.nu = true
vim.opt.mouse = "a"
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.rnu = true
vim.opt.updatetime = 250
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- Set completeopt to have a better completion experience
vim.opt.completeopt = "menuone,noselect"
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
