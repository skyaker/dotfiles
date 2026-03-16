return {
  "hrsh7th/nvim-cmp",
  dependencies = { "hrsh7th/cmp-emoji" },
  config = function()
    local cmp = require "cmp"
    cmp.setup {
      mapping = cmp.mapping.preset.insert {
        ["<CR>"] = cmp.mapping.confirm { select = false },

        ["<Tab>"] = cmp.mapping(function(fallback)
          local has_supermaven, supermaven = pcall(require, "supermaven-nvim.completion_preview")

          if has_supermaven and supermaven.has_suggestion() then
            supermaven.on_accept_suggestion()
          elseif cmp.visible() then
            cmp.select_next_item()
          else
            fallback()
          end
        end, { "i", "s" }),

        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          else
            fallback()
          end
        end, { "i", "s" }),
      },
    }
  end,
}
