return {
    {
        "sindrets/diffview.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            local cb = require('diffview.config').diffview_callback

            require('diffview').setup({
                diff_binaries = false,    -- Show diffs for binaries
                enhanced_diff_hl = true,  -- Enhanced diff highlighting
                use_icons = true,         -- Requires nvim-web-devicons
                file_panel = {
                    win_config = {
                        position = "left",    -- 'left', 'right', 'top', 'bottom'
                        width = 35,           -- Only for 'left'/'right' position
                    },
                },
                keymaps = {
                    view = {
                        ["<tab>"]     = cb("select_next_entry"),  -- Next file diff
                        ["<s-tab>"]   = cb("select_prev_entry"),  -- Previous file diff
                        ["gf"]        = cb("goto_file"),          -- Open file in new split
                        ["<C-w><C-f>"] = cb("goto_file_split"),   -- Open file in split
                        ["<C-w>gf"]   = cb("goto_file_tab"),      -- Open file in new tab
                        ["<leader>e"] = cb("focus_files"),        -- Focus on file panel
                        ["<leader>b"] = cb("toggle_files"),       -- Toggle file panel
                    },
                    file_panel = {
                        ["j"]         = cb("next_entry"),         -- Next file entry
                        ["<down>"]    = cb("next_entry"),
                        ["k"]         = cb("prev_entry"),         -- Previous file entry
                        ["<up>"]      = cb("prev_entry"),
                        ["<cr>"]      = cb("select_entry"),       -- Open diff for selected entry
                        ["o"]         = cb("select_entry"),
                        ["R"]         = cb("refresh_files"),      -- Refresh file list
                        ["<tab>"]     = cb("select_next_entry"),
                        ["<s-tab>"]   = cb("select_prev_entry"),
                        ["gf"]        = cb("goto_file"),
                        ["<C-w><C-f>"] = cb("goto_file_split"),
                        ["<C-w>gf"]   = cb("goto_file_tab"),
                        ["i"]         = cb("listing_style"),      -- Toggle between list/tree views
                        ["f"]         = cb("toggle_flatten_dirs"),-- Flatten empty subdirs in tree
                    },
                    file_history_panel = {
                        ["g!"]        = cb("options"),            -- Open option panel
                        ["<C-A-d>"]   = cb("open_in_diffview"),   -- Open entry in diffview
                        ["y"]         = cb("copy_hash"),          -- Copy commit hash
                        ["zR"]        = cb("open_all_folds"),
                        ["zM"]        = cb("close_all_folds"),
                        ["j"]         = cb("next_entry"),
                        ["<down>"]    = cb("next_entry"),
                        ["k"]         = cb("prev_entry"),
                        ["<up>"]      = cb("prev_entry"),
                        ["<cr>"]      = cb("select_entry"),
                        ["o"]         = cb("select_entry"),
                        ["<2-LeftMouse>"] = cb("select_entry"),
                        ["<tab>"]     = cb("select_next_entry"),
                        ["<s-tab>"]   = cb("select_prev_entry"),
                    },
                    option_panel = {
                        ["<tab>"] = cb("select"),
                        ["q"]     = cb("close"),
                    },
                },
            })
        end
    }
}
