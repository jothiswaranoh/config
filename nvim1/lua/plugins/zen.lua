return {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        window = {
          backdrop = 0.95, -- Shade the backdrop of the Zen window
          width = 120, -- Width of the Zen window
          height = 1, -- Height of the Zen window
          options = {
            number = false, -- Disable number column
            relativenumber = false, -- Disable relative numbers
            cursorline = false, -- Disable cursorline
            cursorcolumn = false, -- Disable cursor column
            signcolumn = "no", -- Disable signcolumn
          },
        },
        plugins = {
          options = {
            enabled = true,
            ruler = false, -- Disable the ruler text
            showcmd = false, -- Disable the command in the last line
            laststatus = 0, -- Turn off the statusline
          },
          twilight = { enabled = true }, -- Enable Twilight
          gitsigns = { enabled = false }, -- Disable gitsigns
          tmux = { enabled = false }, -- Disable tmux statusline
        },
        on_open = function(win)
          -- Custom code when the Zen window opens
        end,
        on_close = function()
          -- Custom code when the Zen window closes
        end,
      }
    end,
  }
  