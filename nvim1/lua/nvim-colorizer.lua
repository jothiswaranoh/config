return {
    "norcalli/nvim-colorizer.lua",
    event = "VeryLazy",  -- Optional: Load lazily if needed
    config = function()
        require'colorizer'.setup()
    end
}
