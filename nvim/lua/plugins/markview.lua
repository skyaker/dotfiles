return {
  "OXY2DEV/markview.nvim",
  lazy = false,
  config = function()
    require("markview").setup {
      modes = { "n", "no", "c" },
      markdown = {
        headings = {
          enable = true,
          shift_width = 2,
        },
        highlights = {
          enable = true,
        },
      },
    }
  end,
}
