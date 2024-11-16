-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.wo.number = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Core
vim.opt.swapfile = false

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

-- Fillchars
vim.opt.fillchars = {
	vert = "│",
	fold = "⠀",
	eob = " ", -- suppress ~ at EndOfBuffer
	-- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
	msgsep = "‾",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸",
}
vim.cmd([[highlight clear LineNr]])
vim.cmd([[highlight clear SignColumn]])

vim.treesitter.language.register("bash", "sh.tmpl")
vim.treesitter.language.register("lua", "lua.tmpl")
vim.treesitter.language.register("yaml", "yaml.tmpl")
vim.treesitter.language.register("json", "json.tmpl")
vim.treesitter.language.register("config", "conf.tmpl")
