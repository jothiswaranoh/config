return {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }, -- Optional: for file icons
    config = function()
        local colors = {
            red = '#ff5f5f', -- Customize this red to your liking
        }

        require('lualine').setup({
            options = {
                theme = 'dracula',            -- Set your preferred theme
                section_separators = '',      -- Optional: removes section separators
                component_separators = '',    -- Optional: removes component separators
            },
            sections = {
                lualine_a = {'mode'},                      -- Mode (e.g., insert, normal)
                lualine_b = {'branch', 'diff'},            -- Branch and diff info
                lualine_c = {
                    {
                        'filename',
                        path = 1, -- Show full path
                        symbols = {
                            modified = ' ',  -- Use a more noticeable icon (pencil icon)
                            readonly = ' ',  -- Lock icon for readonly files
                            unnamed = '[No Name]', -- For unnamed buffers
                        },
                        -- Apply color to the modified symbol
                        color = {
                            fg = colors.red, -- Set the text (foreground) color to red for modified files
                            gui = 'bold',    -- Make it bold for more emphasis
                        }
                    },
                },
                lualine_x = {'encoding', 'fileformat', 'filetype'}, -- File encoding, format, and type
                lualine_y = {'location'},        -- Current line and column
                lualine_z = {'progress'},        -- Progress through the file
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},        -- Only show the filename when inactive
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            extensions = {}
        })
    end
}
