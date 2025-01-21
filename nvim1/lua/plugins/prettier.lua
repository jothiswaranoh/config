return {
    "MunifTanjim/prettier.nvim",
    config = function()
      local prettier = require("prettier")
  
      prettier.setup({
        bin = 'prettier', -- or 'prettierd'
        filetypes = {
          "css",
          "graphql",
          "html",
          "javascript",
          "javascriptreact",
          "json",
          "less",
          "markdown",
          "scss",
          "typescript",
          "typescriptreact",
          "yaml",
        },
        cli_options = {
          arrow_parens = "always",
          bracket_spacing = true,
          print_width = 80,
          single_quote = false,
          -- Add more options as needed
        },
      })
    end,
  }
  