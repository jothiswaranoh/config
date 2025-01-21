return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			-- Load cmp capabilities for LSP
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Initialize lspconfig
			local lspconfig = require("lspconfig")

			-- Function for attaching LSP to buffers
			local on_attach = function(_, bufnr)
				local bufopts = { noremap = true, silent = true, buffer = bufnr }

				-- Key mappings for LSP functions
				vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show hover documentation", buffer = bufnr })
				vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition", buffer = bufnr })
				vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, { desc = "Find references", buffer = bufnr })
				vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action", buffer = bufnr })
				vim.keymap.set("n", "<leader>fm", function()
					vim.lsp.buf.format({ async = true })
				end, { desc = "Format buffer", buffer = bufnr })
			end

			-- Configure servers
			local servers = {
				"tsserver", -- JavaScript/TypeScript
				"solargraph", -- Ruby
				"lua_ls", -- Lua
				"pyright", -- Python
			}

			for _, server in ipairs(servers) do
				lspconfig[server].setup({
					capabilities = capabilities,
					on_attach = on_attach,
				})
			end

			-- Auto-formatting on save for ERB files
			vim.api.nvim_create_autocmd("BufWritePre", {
				pattern = "*.erb",
				callback = function()
					vim.lsp.buf.format({ async = false, timeout_ms = 1000 })
				end,
			})
		end,
	},
}
