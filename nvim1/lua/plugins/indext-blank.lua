return {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
        require("ibl").setup {
            indent = {
                char = "│",  -- Set the character used for indentation guides
                highlight = "LineNr",  -- Highlight group for the indentation character
            },
            scope = {
                enabled = true,  -- Enable scope highlighting
            },
            -- Additional options can be set here as needed
        }

        -- Set 2-space indentation
        vim.opt.tabstop = 2          -- Number of spaces that a <Tab> counts for
        vim.opt.shiftwidth = 2       -- Number of spaces to use for each step of (auto)indent
        vim.opt.expandtab = true     -- Use spaces instead of tabs
    end
}
