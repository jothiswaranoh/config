return {
    'akinsho/nvim-bufferline.lua',
    requires = 'kyazdani42/nvim-web-devicons',  -- Optional: for file icons
    config = function()
        require('bufferline').setup({
            options = {
                separator_style = "slant",  -- Customize separators between buffers
                always_show_bufferline = true,
                show_buffer_close_icons = false, -- Hide individual buffer close icons
                show_close_icon = false, -- Hide the global close icon
                offsets = {{filetype = "NvimTree", text = "File Explorer", padding = 1}},
                diagnostics = "nvim_lsp",  -- Show LSP diagnostics in the bufferline
                max_name_length = 18, -- Limit buffer name length
            },
        })

        -- Key mappings to navigate buffers
        vim.api.nvim_set_keymap('n', '<Space><Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<S-Space><Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
    end
}
