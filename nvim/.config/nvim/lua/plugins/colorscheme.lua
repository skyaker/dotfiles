-- return {
--   -- rose-pine с прозрачным фоном
--   {
--     "rose-pine/neovim",
--     name = "rose-pine",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       require("rose-pine").setup {
--         disable_background = true,
--         disable_float_background = true,
--         disable_italics = false,
--       }
--
--       vim.cmd "colorscheme rose-pine"
--     end,
--   },
--
--   -- transparent.nvim (если хочешь оставить)
--   {
--     "tribela/transparent.nvim",
--     lazy = true,
--   },
-- }

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
-- }

return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    -- Default options:
    require("kanagawa").setup {
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = "wave", -- Load "wave" theme
      background = { -- map the value of 'background' option to a theme
        dark = "wave", -- try "dragon" !
        light = "lotus",
      },
    }

    -- setup must be called before loading
    vim.cmd "colorscheme kanagawa"
  end,
}
