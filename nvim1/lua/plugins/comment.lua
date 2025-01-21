return {
    -- Add other plugins here
    {
      'numToStr/Comment.nvim',
      opts = {
          padding = true, -- Add space between comment and the line
          sticky = true,  -- Keep the cursor in place
          mappings = {
              basic = true,  -- Enable basic mappings
              extra = true,  -- Enable extra mappings
          },
          pre_hook = nil,  -- Hook before (un)comment
          post_hook = nil, -- Hook after (un)comment
      },
    },
  }
  