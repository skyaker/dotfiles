return {
  -- rose-pine с прозрачным фоном
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup {
        disable_background = true,
        disable_float_background = true,
        disable_italics = false,
      }

      vim.cmd "colorscheme rose-pine"
    end,
  },

  -- transparent.nvim (если хочешь оставить)
  {
    "tribela/transparent.nvim",
    lazy = true,
  },
}
