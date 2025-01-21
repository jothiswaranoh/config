return {
  "tpope/vim-rails",
  config = function()
    -- Example of customizing the :Rails command execution
    vim.g.rails_command = 'bundle exec rails'

    -- Enable specific plugins like dispatch.vim or bundler.vim if installed
    vim.g.rails_dispatch = 1  -- Use dispatch.vim for async execution (optional)
    vim.g.rails_bundler = 1   -- Use bundler.vim (optional)
  end
}
