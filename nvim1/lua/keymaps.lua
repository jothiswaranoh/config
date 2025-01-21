-- Insert mode: Exit insert mode by typing "jj"
vim.api.nvim_set_keymap("i", "jj", "<Esc>", { noremap = false })

-- Twilight plugin toggle
vim.api.nvim_set_keymap("n", "tw", ":Twilight<CR>", { noremap = false })

-- Buffer navigation and management
vim.api.nvim_set_keymap("n", "tk", ":blast<CR>", { noremap = false }) -- Go to the last buffer
vim.api.nvim_set_keymap("n", "tj", ":bfirst<CR>", { noremap = false }) -- Go to the first buffer
vim.api.nvim_set_keymap("n", "th", ":bprev<CR>", { noremap = false }) -- Go to the previous buffer
vim.api.nvim_set_keymap("n", "tl", ":bnext<CR>", { noremap = false }) -- Go to the next buffer
vim.api.nvim_set_keymap("n", "td", ":bdelete<CR>", { noremap = false }) -- Delete the current buffer

-- File operations
vim.api.nvim_set_keymap("n", "QQ", ":q!<CR>", { noremap = false }) -- Force quit
vim.api.nvim_set_keymap("n", "WW", ":w!<CR>", { noremap = false }) -- Force save
vim.api.nvim_set_keymap("n", "E", "$", { noremap = false }) -- Go to the end of line
vim.api.nvim_set_keymap("n", "B", "^", { noremap = false }) -- Go to the beginning of line
vim.api.nvim_set_keymap("n", "TT", ":TransparentToggle<CR>", { noremap = true }) -- Toggle transparency
vim.api.nvim_set_keymap("n", "ss", ":noh<CR>", { noremap = true }) -- Clear search highlighting

-- Split management
vim.api.nvim_set_keymap("n", "<C-W>,", ":vertical resize -10<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-W>.", ":vertical resize +10<CR>", { noremap = true })

-- Quick close split
vim.keymap.set("n", "<leader>qq", ":q<CR>", { silent = true, noremap = true })

-- Disable <Space> key in normal and visual mode (for better use as leader key)
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Remap for handling word wrapping correctly
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Correct Noice key mappings
vim.api.nvim_set_keymap("n", "<leader>nn", ":NoiceDismiss<CR>", { noremap = true, silent = true }) -- Fixed typo and corrected command syntax

-- Diffview mappings for open/close
vim.api.nvim_set_keymap("n", "<leader>dq", ":DiffviewOpen<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>dc", ":DiffviewClose<CR>", { noremap = true, silent = true })

-- Gitsigns mappings
vim.api.nvim_set_keymap("n", "<leader>gs", ":Gitsigns preview_hunk<CR>", {})
vim.api.nvim_set_keymap("n", "<leader>g?", ":Gitsigns toggle_current_line_blame<CR>", {})

-- Custom Go command (assuming you use a Go plugin)
vim.keymap.set("n", "<leader>ee", "<cmd>GoIfErr<CR>", { silent = true, noremap = true })

vim.api.nvim_set_keymap("n", "<leader>ra", ":A<CR>", { noremap = true, silent = true }) -- Go to alternate file
vim.api.nvim_set_keymap("n", "<leader>rr", ":R<CR>", { noremap = true, silent = true }) -- Go to related file

vim.api.nvim_set_keymap("n", "<leader>rf", ":!rubocop -A %<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<leader>em", ":Emodel<CR>", { noremap = true, silent = true }) -- Edit model
vim.api.nvim_set_keymap("n", "<leader>ec", ":Econtroller<CR>", { noremap = true, silent = true }) -- Edit controller
vim.api.nvim_set_keymap("n", "<leader>ev", ":Eview<CR>", { noremap = true, silent = true }) -- Edit view

vim.api.nvim_set_keymap("n", "<leader>sm", ":Smodel<CR>", { noremap = true, silent = true }) -- Split model
vim.api.nvim_set_keymap("n", "<leader>vm", ":Vmodel<CR>", { noremap = true, silent = true }) -- Vertical split model
vim.api.nvim_set_keymap("n", "<leader>tm", ":Tmodel<CR>", { noremap = true, silent = true }) -- Open model in tab

vim.api.nvim_set_keymap("n", "<leader>rgc", ":Generate controller<CR>", { noremap = true, silent = true }) -- Generate controller
vim.api.nvim_set_keymap("n", "<leader>rgm", ":Generate model<CR>", { noremap = true, silent = true }) -- Generate model

vim.api.nvim_set_keymap("n", "<leader>rc", ":Rails console<CR>", { noremap = true, silent = true }) -- Open Rails console
vim.api.nvim_set_keymap("n", "<leader>rs", ":Rails server<CR>", { noremap = true, silent = true }) -- Start Rails server

vim.api.nvim_set_keymap("v", "<leader>xp", ":Extract ", { noremap = true, silent = true }) -- Extract to partial

vim.api.nvim_set_keymap("n", "<leader>tt", ":Rails<CR>", { noremap = true, silent = true }) -- Run test suite
vim.api.nvim_set_keymap("n", "<leader>tl", ":Rails .<CR>", { noremap = true, silent = true }) -- Run test method

-- Keybindings for searching specific file types
vim.keymap.set("n", "<leader>fc", function()
	search_files_by_type("controller")
end, { desc = "Search Controllers" })
vim.keymap.set("n", "<leader>fm", function()
	search_files_by_type("model")
end, { desc = "Search Models" })
vim.keymap.set("n", "<leader>fv", function()
	search_files_by_type("view")
end, { desc = "Search Views" })
vim.keymap.set("n", "<leader>fs", function()
	search_files_by_type("serializer")
end, { desc = "Search Serializers" })
vim.keymap.set("n", "<leader>fsv", function()
	search_files_by_type("service")
end, { desc = "Search Services" })
