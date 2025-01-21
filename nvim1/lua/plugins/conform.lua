return {
    {
      "stevearc/conform.nvim",  -- Define the plugin
      config = function()
        require("conform").setup({
          -- Specify formatters for different file types
          formatters_by_ft = {
            lua = { "stylua" },  -- Use Stylua for formatting Lua files
            python = { "isort", "black" },  -- Use isort and black for Python
            rust = { "rustfmt", lsp_format = "fallback" },  -- Rustfmt for Rust
            javascript = { "prettierd", "prettier", stop_after_first = true },  -- Prettier for JS
            go = { "goimports", "gofmt" },  -- Go formatting
            scss = { "prettier" },  -- Prettier for SCSS
            ruby = { "rubocop" },  -- RuboCop for Ruby
            erb = { "erb-formatter" },  -- ERB Formatter
            ["*"] = { "codespell" },  -- Codespell for all filetypes
            ["_"] = { "trim_whitespace" },  -- Trim whitespace if no formatter available
          },
          
          -- Enable format-on-save for all files
          format_on_save = {
            timeout_ms = 50000,  -- Timeout for formatting
            lsp_format = "fallback",  -- Use LSP formatting if available
          },
          
          -- Configure notifications
          notify_on_error = true,  -- Notify when a formatter errors
          notify_no_formatters = true,  -- Notify when no formatters are available
          
          -- Set up default options for formatting
          default_format_opts = {
            lsp_format = "fallback",  -- Use fallback for LSP
          },
          
          -- Log level configuration (use `:ConformInfo` to view logs)
          log_level = vim.log.levels.ERROR,
          
          -- Custom formatter definitions
          formatters = {
            -- Example of a custom formatter for YAML
            yamlfix = {
              command = "local/path/yamlfix",  -- Path to the yamlfix command
              env = {
                YAMLFIX_SEQUENCE_STYLE = "block_style",  -- Custom env vars for formatter
              },
            },
            
            -- Example of a formatter for shell scripts
            shfmt = {
              command = "shfmt",
              args = { "-i", "2", "-filename", "$FILENAME" },  -- Set indentation to 2 spaces
            },
          },
        })
      end,
    },
  }
  