-- Leader
vim.g.mapleader = " "

-- Escape
vim.keymap.set("i", "jj", "<Esc>", { silent = true })

-- Codeium
vim.keymap.set("i", "<Tab>", function()
	return vim.fn["codeium#Accept"]()
end, { expr = true, silent = true })
vim.keymap.set("i", "<C-l>", function()
    return vim.fn["codeium#AcceptLine"]()
end, { expr = true, silent = true }
vim.keymap.set("i", "<M-]>", function()
	return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true, silent = true })
vim.keymap.set("i", "<M-[>", function()
	return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true, silent = true })
vim.keymap.set("i", "<C-x>", function()
	return vim.fn["codeium#Clear"]()
end, { expr = true, silent = true })


-- UndoTree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { silent = true })

-- NeoTree
vim.keymap.set("n", "<leader>e", ":Neotree float reveal<CR>", { silent = true })
-- vim.keymap.set('n', '<leader>E', ':Neotree left reveal<CR>', { silent = true})

-- Yazi
vim.keymap.set("n", "<leader>E", "<cmd>Yazi<cr>", { silent = true }) -- open yazi at the current file
-- vim.keymap.set('n', '<leader>E', '<cmd>Yazi cwd<cr>', { silent = true})                -- open yazi at the current working directory
-- vim.keymap.set('n', '<leader>-', '<cmd>Yazi toggle<cr>', { silent = true})             -- resume the last yazi session

-- Navigation
vim.keymap.set("n", "<C-h>", "<Cmd>NvimTmuxNavigateLeft<CR>", { silent = true })
vim.keymap.set("n", "<C-j>", "<Cmd>NvimTmuxNavigateDown<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>NvimTmuxNavigateUp<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", "<Cmd>NvimTmuxNavigateRight<CR>", { silent = true })

-- Comments
vim.keymap.set("n", "<leader>/", ":CommentToggle<CR>", { silent = true })

-- Splits
vim.keymap.set("n", "s|", ":vsplit<CR>", { silent = true })
vim.keymap.set("n", "s\\", ":split<CR>", { silent = true })

-- Other
vim.keymap.set("n", "<leader>w", ":w<CR>", { silent = true })
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { silent = true })

-- Tabs
vim.keymap.set("n", "<leader>x", ":BufferLinePickClose<CR>", { silent = true })
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>", { silent = true })
vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>", { silent = true })

-- Terminal
vim.keymap.set("n", "<leader>tf", ":ToggleTerm direction=float<CR>", { silent = true })
vim.keymap.set("n", "<leader>th", ":ToggleTerm direction=horizontal<CR>", { silent = true })
vim.keymap.set("n", "<leader>tv", ":ToggleTerm direction=vertical size=40<CR>", { silent = true })
vim.keymap.set("n", "<leader>tr", ":ToggleTermSendCurrentLine <T_ID><CR>", { silent = true })
vim.keymap.set("v", "<leader>tr", ":ToggleTermSendVisualSelection <T_ID><CR>", { silent = true })
-- vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts) -- Escape terminal mode (comment for work vim navigation in terminal mode in yazi)
vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)

-- LazyGit
vim.keymap.set("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
-- Htop
vim.keymap.set("n", "<leader>H", "<cmd>lua _htop_toggle()<CR>", { noremap = true, silent = true })
-- GitHub
vim.keymap.set("n", "<leader>G", "<cmd>ChatGPT<CR>", { noremap = true, silent = true })

-- Telescope
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader><leader>", builtin.oldfiles, { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>ff", builtin.find_files, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gb", builtin.git_branches, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gc", builtin.git_commits, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>gs", builtin.git_status, { noremap = true, silent = true })
vim.keymap.set("n", "<leader>ls", builtin.lsp_document_symbols, { noremap = true, silent = true })
vim.keymap.set("n", "gd", builtin.lsp_definitions, { noremap = true, silent = true })

-- Oil
-- [<leader>-] open OIL
--  Keymaps in oil buffer. Can be any value that `vim.keymap.set` accepts OR a table of keymap
-- ["g?"] = "actions.show_help",
-- ["<CR>"] = "actions.select",
-- ["<C-s>"] = { "actions.select", opts = { vertical = true }, desc = "Open the entry in a vertical split" },
-- ["<C-h>"] = { "actions.select", opts = { horizontal = true }, desc = "Open the entry in a horizontal split" },
-- ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
-- ["<C-p>"] = "actions.preview",
-- ["<C-c>"] = "actions.close",
-- ["<C-l>"] = "actions.refresh",
-- ["-"] = "actions.parent",
-- ["_"] = "actions.open_cwd",
-- ["`"] = "actions.cd",
-- ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory", mode = "n" },
-- ["gs"] = "actions.change_sort",
-- ["gx"] = "actions.open_external",
-- ["g."] = "actions.toggle_hidden",
-- ["g\\"] = "actions.toggle_trash",

-- LSP
-- Global mappings.
vim.keymap.set("n", "<leader>lD", vim.diagnostic.open_float)
vim.keymap.set("n", "<leader>l[", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<leader>l]", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>ld", vim.diagnostic.setloclist)

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gd", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
		vim.keymap.set("n", "<Leader>lr", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<Leader>la", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<Leader>lf", function()
			vim.lsp.buf.format({ async = true })
		end, opts)
	end,
})

-- local wk = require("which-key")

-- wk.add({
--     -- Escape
--     { "jj",         "<Esc>",                                            desc = "Escape",                 mode = "i" },
--
--     -- UndoTree
--     { "<leader>u",  function() vim.cmd.UndotreeToggle() end,            desc = "Toggle UndoTree",        mode = "n" },
--
--     -- NeoTree group
--     -- { "<leader>e",  "<cmd>Neotree float reveal<CR>",                    desc = "Explorer (Float)",       mode = "n" },
--     -- { "<leader>E",  "<cmd>Neotree left reveal<CR>",                     desc = "Explorer (Left)",        mode = "n" },
--     --
--     -- Navigation
--     { "<c-k>",      "<cmd>wincmd k<CR>",                                desc = "Navigate Up",            mode = "n" },
--     { "<c-j>",      "<cmd>wincmd j<CR>",                                desc = "Navigate Down",          mode = "n" },
--     { "<c-h>",      "<cmd>wincmd h<CR>",                                desc = "Navigate Left",          mode = "n" },
--     { "<c-l>",      "<cmd>wincmd l<CR>",                                desc = "Navigate Right",         mode = "n" },
--
--     -- Comments
--     { "<leader>/",  "<cmd>CommentToggle<CR>",                           desc = "Toggle Comment",         mode = "n" },
--
--     -- Splits
--     { "s|",         "<cmd>vsplit<CR>",                                  desc = "Vertical Split",         mode = "n" },
--     { "s\\",        "<cmd>split<CR>",                                   desc = "Horizontal Split",       mode = "n" },
--
--     -- Other
--     { "<leader>w",  "<cmd>w<CR>",                                       desc = "Save File",              mode = "n" },
--     { "<leader>h",  "<cmd>nohlsearch<CR>",                              desc = "Clear Search Highlight", mode = "n" },
--
--     -- Buffers and Tabs group
--     { "<leader>x",  "<cmd>BufferLinePickClose<CR>",                     desc = "Close Buffer (Pick)",    mode = "n" },
--     { "<Tab>",      "<cmd>BufferLineCycleNext<CR>",                     desc = "Next Buffer",            mode = "n" },
--     { "<S-Tab>",    "<cmd>BufferLineCyclePrev<CR>",                     desc = "Previous Buffer",        mode = "n" },
--
--     -- Terminal group
--     { "<leader>t",  group = "Terminal" },
--     { "<leader>tf", "<cmd>ToggleTerm direction=float<CR>",              desc = "Float Terminal",         mode = "n" },
--     { "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>",         desc = "Horizontal Terminal",    mode = "n" },
--     { "<leader>tv", "<cmd>ToggleTerm direction=vertical size=40<CR>",   desc = "Vertical Terminal",      mode = "n" },
--     { "<leader>tr", "<cmd>ToggleTermSendCurrentLine <T_ID><CR>",        desc = "Send Line to Terminal",  mode = "n" },
--
--     -- LazyGit and Htop
--     { "<leader>g",  "<cmd>lua _lazygit_toggle()<CR>",                   desc = "LazyGit",                mode = "n" },
--     { "<leader>H",  "<cmd>lua _htop_toggle()<CR>",                      desc = "Htop",                   mode = "n" },
--     { "<leader>G",  "<cmd>ChatGPT<CR>",                                 desc = "GitHub",                 mode = "n" },
--
--     -- Telescope group
--     { "<leader>f",  group = "Find" },
--     { "<leader>ff", "<cmd>Telescope find_files<CR>",                    desc = "Find Files",             mode = "n" },
--     { "<leader>fg", "<cmd>Telescope live_grep<CR>",                     desc = "Live Grep",              mode = "n" },
--     { "<leader>fb", "<cmd>Telescope buffers<CR>",                       desc = "Find Buffers",           mode = "n" },
--     { "<leader>fh", "<cmd>Telescope help_tags<CR>",                     desc = "Find Help",              mode = "n" },
--     { "<leader>gb", "<cmd>Telescope git_branches<CR>",                  desc = "Git Branches",           mode = "n" },
--     { "<leader>gc", "<cmd>Telescope git_commits<CR>",                   desc = "Git Commits",            mode = "n" },
--     { "<leader>gs", "<cmd>Telescope git_status<CR>",                    desc = "Git Status",             mode = "n" },
--     { "<leader>ls", "<cmd>Telescope lsp_document_symbols<CR>",          desc = "LSP Symbols",            mode = "n" },
--
--     -- LSP group
--     { "<leader>l",  group = "LSP" },
--     { "<leader>lD", vim.diagnostic.open_float,                          desc = "Open Diagnostics Float", mode = "n" },
--     { "<leader>ld", vim.diagnostic.setloclist,                          desc = "Diagnostics List",       mode = "n" },
--     { "<leader>lr", vim.lsp.buf.rename,                                 desc = "Rename Symbol",          mode = "n" },
--     { "<leader>lf", function() vim.lsp.buf.format { async = true } end, desc = "Format Document",        mode = "n" },
--     { "<leader>la", vim.lsp.buf.code_action,                            desc = "Code Action",            mode = { "n", "v" } }
-- })
