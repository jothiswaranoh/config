return {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local null_ls = require("null-ls")
  
      null_ls.setup({
        sources = {
          -- RuboCop setup for Ruby
          null_ls.builtins.diagnostics.rubocop.with({
            command = "bundle",
            args = { "exec", "rubocop", "--format", "simple" },
          }),
        },
        -- Format on save configuration
        format_on_save = {
          async = true,
          timeout_ms = 1000,
        },
      })
  
      -- Optional: Bind a keymap to run rubocop manually
      vim.keymap.set("n", "<leader>rr", function()
        vim.cmd("!bundle exec rubocop")
      end, { desc = "Run RuboCop manually" })
    end,
  }
  