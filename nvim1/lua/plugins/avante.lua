return {
  "yetone/avante.nvim",
  lazy = false,
  version = false, -- set this to always pull the latest change
  opts = {
    -- Add your API key here
    api_key = "NNG919qj5EUACW9ejLyatQ7NjhpOI1ny",
  },
  event = "VeryLazy",
  build = "make",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- Optional for icons support
    {
      "HakonHarnes/img-clip.nvim", -- Support for image pasting
      event = "VeryLazy",
      opts = {
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          use_absolute_path = true, -- Required for Windows users
        },
      },
    },
    {
      "MeanderingProgrammer/render-markdown.nvim", -- Render markdown files
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" }, -- File types for lazy loading
    },
  },
}
