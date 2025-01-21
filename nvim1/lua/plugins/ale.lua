return {
    "dense-analysis/ale", -- Correct GitHub repo for ALE

  config = function()
      -- Enable ALE linters for specific languages
        vim.g.ale_linters = {
              ruby = { "rubocop" }, -- Use RuboCop for Ruby linting
                  }
    
                      -- Enable ALE fixers for automatic code corrections
                          vim.g.ale_fixers = {
                                ruby = { "rubocop" }, -- Use RuboCop to fix Ruby code
                                    }
    
                                        -- Set ALE behavior
                                            vim.g.ale_fix_on_save = 1 -- Fix code automatically on save
                                                vim.g.ale_lint_on_save = 1 -- Lint code on save
                                                    vim.g.ale_lint_on_enter = 1 -- Lint code when entering a buffer
                                                      end,
                                                      }
    