return {
  {
    "mfussenegger/nvim-dap",
    lazy = false,
    name = "nvim-dap",
    config = function()
      -- You can add custom configurations for nvim-dap here if needed
      require('dap').set_log_level('DEBUG')  -- Example configuration: Set log level to DEBUG
      -- Additional custom configurations can go here
    end
  }
}
