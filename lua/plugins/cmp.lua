-- ~/.config/nvim/lua/plugins/cmp.lua

-- Import the cmp setup function
local cmp = require("cmp")

cmp.setup({
  mapping = {
    -- Custom mappings for navigation
    ['<C-j>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<C-k>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
    
    -- Set <C-y> to confirm the selected completion
    ['<C-y>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item with Ctrl-y

    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Also confirm with Enter
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
  },
  -- Other cmp configurations...
})

