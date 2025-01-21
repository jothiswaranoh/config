return {
	-- {
	-- 	"nvim-telescope/telescope-ui-select.nvim",
	-- },
	-- {
	-- 	"nvim-telescope/telescope.nvim",
	-- 	tag = "0.1.5",
	-- 	dependencies = { "nvim-lua/plenary.nvim" },
	-- 	config = function()
	-- 		require("telescope").setup({
	-- 			extensions = {
	-- 				["ui-select"] = {
	-- 					require("telescope.themes").get_dropdown({}),
	-- 				},
	-- 			},
	-- 		})
	-- 		local builtin = require("telescope.builtin")
	--
	-- 		-- Keybindings for finding files and live grep
	-- 		vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
	-- 		vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
	-- 		vim.keymap.set("n", "<leader>sf", builtin.oldfiles, {})
	--
	-- 		-- Clear current buffer content
	-- 		vim.keymap.set("n", "<leader>sc", ":%d<CR>", { desc = "Clear Current Buffer" })
	--
	-- 		-- Search current buffer using Telescope's built-in `current_buffer_fuzzy_find`
	-- 		vim.keymap.set("n", "<leader>fb", function()
	-- 			builtin.current_buffer_fuzzy_find({
	-- 				prompt_title = "Search Current Buffer",
	-- 			})
	-- 		end, { desc = "Search Current Buffer" })
	--
	-- 		-- Load the ui-select extension
	-- 		require("telescope").load_extension("ui-select")
	-- 	end,
	-- },
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			-- Setup Telescope
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})

			local builtin = require("telescope.builtin")
			local uv = vim.loop -- Access Neovim's libuv wrapper for path operations

			-- Keybindings for finding files and live grep
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>sf", builtin.oldfiles, {})

			-- Clear current buffer content
			vim.keymap.set("n", "<leader>sc", ":%d<CR>", { desc = "Clear Current Buffer" })

			-- Search current buffer using Telescope's built-in `current_buffer_fuzzy_find`
			vim.keymap.set("n", "<leader>fb", function()
				builtin.current_buffer_fuzzy_find({
					prompt_title = "Search Current Buffer",
				})
			end, { desc = "Search Current Buffer" })

			-- Function to search files by type
			function _G.search_files_by_type(file_type)
				local search_dir
				if file_type == "controller" then
					search_dir = "./app/controllers"
				elseif file_type == "model" then
					search_dir = "./app/models"
				elseif file_type == "view" then
					search_dir = "./app/views"
				elseif file_type == "serializer" then
					search_dir = "./app/serializers"
				elseif file_type == "service" then
					search_dir = "./app/services"
				else
					print("Unknown file type: " .. file_type)
					return
				end

				-- Convert the search_dir to an absolute path based on the current working directory
				local cwd = uv.cwd() -- Get the current working directory
				search_dir = uv.fs_realpath(cwd .. "/" .. search_dir)

				-- Check if the directory exists
				if search_dir and vim.fn.isdirectory(search_dir) == 1 then
					builtin.find_files({
						search_dirs = { search_dir },
						prompt_title = file_type:sub(1, 1):upper() .. file_type:sub(2) .. " Files",
					})
				else
					print("Directory does not exist: " .. search_dir)
				end
			end

			-- Load the ui-select extension
			require("telescope").load_extension("ui-select")
		end,
	},
}
