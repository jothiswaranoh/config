return {
	"xiyaowong/nvim-transparent",
	config = function()
	  -- Set the background to transparent
	  vim.cmd [[highlight Normal guibg=NONE]]
	  vim.cmd [[highlight NormalNC guibg=NONE]]
	  vim.cmd [[highlight StatusLine guibg=NONE]]
	  vim.cmd [[highlight StatusLineNC guibg=NONE]]
	  
	  -- Configuration for the nvim-transparent plugin
	  require("transparent").setup({
		-- default highlight groups that will be affected by transparency
		groups = {
		  "Normal",
		  "NormalNC",
		  "Comment",
		  "Constant",
		  "Special",
		  "Identifier",
		  "Statement",
		  "PreProc",
		  "Type",
		  "Underlined",
		  "Todo",
		  "String",
		  "Function",
		  "Conditional",
		  "Repeat",
		  "Operator",
		  "Structure",
		  "LineNr",
		  "NonText",
		  "SignColumn",
		  "CursorLine",
		  "CursorLineNr",
		  "StatusLine",
		  "StatusLineNC",
		  "EndOfBuffer",
		},
		-- Additional groups that should be cleared
		extra_groups = {},
		-- Groups that should not be cleared (transparent effect will not apply)
		exclude_groups = {},
		-- Function to be executed after clearing highlight groups
		on_clear = function() end,
	  })
	end,
  }
  