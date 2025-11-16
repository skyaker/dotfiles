return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional
  },
  init = function() vim.g.barbar_auto_setup = true end,
  config = function()
    require("barbar").setup {
      animation = true,
      clickable = true,
      sidebar_filetypes = {
        -- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
        NvimTree = true,
        undotree = {
          text = "undotree",
          align = "left", -- *optionally* specify an alignment (either 'left', 'center', or 'right')
        },
        ["neo-tree"] = { event = "NvimTreeToggle" },
      },

      -- тут можешь кастомизировать
    }
  end,
}
