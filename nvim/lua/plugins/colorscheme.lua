-- return {
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
--   }
-- }

-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function()
--     require("tokyonight").setup {
--       style = "moon",
--     }
--   end,
-- }

return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("github-theme").setup {
      options = {
        transparent = true,
      },
      palettes = {
        github_dark = {
          bg1 = "#000000", -- Black background
          bg0 = "#000000", -- Alt backgrounds (floats, statusline, ...)
          bg3 = "#121820", -- 55% darkened from stock
          sel0 = "#131b24", -- 55% darkened from stock
        },
      },
    }
  end,
}

-- return {
--   "scottmckendry/cyberdream.nvim",
--   lazy = false,
--   priority = 1000,
-- }

-- return {
--   "yorumicolors/yorumi.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
-- }

-- return {
--   "rebelot/kanagawa.nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function()
--     -- Default options:
--     require("kanagawa").setup {
--       compile = false, -- enable compiling the colorscheme
--       undercurl = true, -- enable undercurls
--       commentStyle = { italic = true },
--       functionStyle = {},
--       keywordStyle = { italic = true },
--       statementStyle = { bold = true },
--       typeStyle = {},
--       transparent = false, -- do not set background color
--       dimInactive = false, -- dim inactive window `:h hl-NormalNC`
--       terminalColors = true, -- define vim.g.terminal_color_{0,17}
--       colors = { -- add/modify theme and palette colors
--         palette = {},
--         theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--       },
--       overrides = function(colors) -- add/modify highlights
--         return {}
--       end,
--       theme = "wave", -- Load "wave" theme
--       background = { -- map the value of 'background' option to a theme
--         dark = "wave", -- try "dragon" !
--         light = "lotus",
--       },
--     }
--
--     -- setup must be called before loading
--     vim.cmd "colorscheme kanagawa"
--   end,
-- }

-- return {
--   "catppuccin/nvim",
--   lazy = false,
--   priority = 1000,
--   opts = {},
--   config = function()
--     -- Default options:
--     require("catppuccin").setup {
--       flavour = "auto", -- latte, frappe, macchiato, mocha
--       background = { -- :h background
--         light = "latte",
--         dark = "frappe",
--       },
--       transparent_background = false, -- disables setting the background color.
--       float = {
--         transparent = false, -- enable transparent floating windows
--         solid = false, -- use solid styling for floating windows, see |winborder|
--       },
--       show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--       term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--       dim_inactive = {
--         enabled = false, -- dims the background color of inactive window
--         shade = "dark",
--         percentage = 0.15, -- percentage of the shade to apply to the inactive window
--       },
--       no_italic = false, -- Force no italic
--       no_bold = false, -- Force no bold
--       no_underline = false, -- Force no underline
--       styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--         comments = { "italic" }, -- Change the style of comments
--         conditionals = { "italic" },
--         loops = {},
--         functions = {},
--         keywords = {},
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--         -- miscs = {}, -- Uncomment to turn off hard-coded styles
--       },
--       lsp_styles = { -- Handles the style of specific lsp hl groups (see `:h lsp-highlight`).
--         virtual_text = {
--           errors = { "italic" },
--           hints = { "italic" },
--           warnings = { "italic" },
--           information = { "italic" },
--           ok = { "italic" },
--         },
--         underlines = {
--           errors = { "underline" },
--           hints = { "underline" },
--           warnings = { "underline" },
--           information = { "underline" },
--           ok = { "underline" },
--         },
--         inlay_hints = {
--           background = true,
--         },
--       },
--       color_overrides = {},
--       custom_highlights = {},
--       default_integrations = true,
--       auto_integrations = false,
--       integrations = {
--         cmp = true,
--         gitsigns = true,
--         nvimtree = true,
--         notify = false,
--         mini = {
--           enabled = true,
--           indentscope_color = "",
--         },
--         -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--       },
--     }
--     -- setup must be called before loading
--     vim.cmd "colorscheme catppuccin"
--   end,
-- }
