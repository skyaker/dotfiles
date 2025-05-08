return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional
  },
  init = function() vim.g.barbar_auto_setup = false end,
  config = function()
    require("barbar").setup {
      -- тут можешь кастомизировать
    }
  end,
}
