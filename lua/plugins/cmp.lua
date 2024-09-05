-- ~/.config/nvim/lua/plugins/cmp.lua

return {
  -- Specify the 'nvim-cmp' plugin to be configured
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      -- Customize the key mappings for 'nvim-cmp'
      local cmp = require("cmp")
      opts.mapping = cmp.mapping.preset.insert({
        ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Confirm with Ctrl-y
        -- ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Confirm with Enter
        ['<Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { 'i', 's' }),
      })
    end,
  }
}

